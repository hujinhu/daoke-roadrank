package me.daoke.roadrank.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.daoke.roadrank.annotation.NeedAccountId;
import me.daoke.roadrank.enumeration.ErrorCode;
import me.daoke.roadrank.utils.JsonResult;
import me.daoke.roadrank.utils.StringUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	private Logger log = LoggerFactory.getLogger(this.getClass());
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String uri = request.getRequestURI();
		// 检验方法是否需要有accountid,如果方法加了NeedAccountid注解,header又没带这参数,就返回签名错误
		HandlerMethod handler2 = (HandlerMethod) handler;
		NeedAccountId needAccountId = handler2.getMethodAnnotation(NeedAccountId.class);
		if (null == needAccountId) {
			needAccountId = handler2.getBean().getClass().getAnnotation(NeedAccountId.class);
		}
		if (needAccountId != null && needAccountId.value()) {
			log.info("当前路径:{}需要AccountId",uri);
			if (StringUtil.isEmpty(request.getHeader("accountid"))) {
				log.info("accountId为空,返回失败");
				response.getWriter().print(JsonResult.failure(ErrorCode.SIGN_ERROR).toString());
				return false;
			}
		}
		return true;
	}

}
