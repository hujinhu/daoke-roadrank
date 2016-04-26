package me.daoke.roadrank.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.daoke.roadrank.enumeration.ErrorCode;
import me.daoke.roadrank.utils.DkSha1Util;
import me.daoke.roadrank.utils.JsonResult;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 签名处理,头信息校验
 * @author 作者：<a href="mailto:1933549135@qq.com">胡金虎</a>
 * @version 创建时间：2016年4月22日 上午11:38:00 
 */
public class SignInterceptor extends HandlerInterceptorAdapter {
	private Logger log = LoggerFactory.getLogger(this.getClass());

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		log.info("当前路径:{},需要sign检验",request.getRequestURI());
		boolean isSignPass = DkSha1Util.signValidate(request);
		log.info("签名校验结果:{}",isSignPass);
		if (isSignPass) {
			return true;
		} else {
			response.getWriter().print(JsonResult.failure(ErrorCode.SIGN_ERROR).toString());
			return false;

		}
	}

}
