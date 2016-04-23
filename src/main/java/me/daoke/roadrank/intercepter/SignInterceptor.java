package me.daoke.roadrank.intercepter;

import java.util.Enumeration;

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


/**
 * 签名处理,头信息校验
 * @author 作者：<a href="mailto:1933549135@qq.com">胡金虎</a>
 * @version 创建时间：2016年4月22日 上午11:38:00 
 */
public class SignInterceptor  extends HandlerInterceptorAdapter {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
    	
    	
    	
    	//检验是否需要有accountid
    	HandlerMethod handler2 = (HandlerMethod) handler;
		NeedAccountId needAccountId = handler2.getMethodAnnotation(NeedAccountId.class);
		if (null == needAccountId) {
			needAccountId = handler2.getBean().getClass().getAnnotation(NeedAccountId.class);
		}
		if (needAccountId!=null && needAccountId.value()) {
			if(StringUtil.isEmpty(request.getHeader("accountid"))){
				response.getWriter().print(JsonResult.failure(ErrorCode.SIGN_ERROR).toString());
				return false;
			}
		}
		
		
    	
    	//打印头信息
    	Enumeration headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String key = (String) headerNames.nextElement();
            String value = request.getHeader(key);
           log.info("{}:{}",key,value);
        }
        
    	 
    	return true;
    	
//        //如果是登录 就放行
//        String  requestURL = request.getServletPath();
//        String sign = request.getParameter("sign");
//        String appKey = request.getParameter("appKey");
//        List<String> keys = new ArrayList<String>(request.getParameterMap().keySet());
//        keys.remove("sign");
//        keys.add("secret");
//        Collections.sort(keys);
//        StringBuilder paramStr = new StringBuilder();
//        for (String key : keys)
//        {
//            if (key.equals("secret"))
//            {
//                paramStr.append(key).append(ConstantsUtil.getSecret(appKey));
//            }
//            else
//            {
//                String[] values = request.getParameterValues(key);
//                for (String val : values)
//                {
//                    paramStr.append(key).append(val);
//                }
//            }
//        }
//        if (SHASignature.sign(paramStr.toString()).equalsIgnoreCase(sign))
//        {
//            return true; // 验证通过，sign没有错误
//        }
//        response.getWriter().print(JsonResult.failure(ErrorCode.SIGN_ERROR).toString());
//        return false; // sign错误
    }

}
