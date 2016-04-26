package me.daoke.roadrank;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import me.daoke.roadrank.utils.DkSha1Util;
import me.daoke.roadrank.utils.HttpUtil;
import me.daoke.roadrank.utils.JsonUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TestLogin {
	private Logger log = LoggerFactory.getLogger(this.getClass());

	/**
	 * 获取个人资料
	 * @throws IOException 
	 */
	public void testLogin(){
		 Map<String, String> param = new HashMap<String, String>();
		 HashMap<String, String> headers = new HashMap<String, String>();  
		 headers.put("appkey", "3055426974");
		 headers.put("accountid", "zMm6mlT7jM");
		 headers.put("token", "lu64o3ul5m");
		 headers.put("timestamp", "lu64o3ul5m");
		 headers.put("sign", "lu64o3ul5m");
		// 签名
		String sign = DkSha1Util.getSign(headers, param);
		param.put("sign", sign);
		String result = HttpUtil.postJson("http://localhost:8080/login/", JsonUtil.nonDefaultMapper().toJson(param),headers);
		if(result!=null){
			log.info(result);
//			JsonResult jsonResult = JsonUtil.nonDefaultMapper().fromJson(result, JsonResult.class);
//			if (jsonResult.getERRCODE().equals("0")) {
//				System.out.println("result: " + jsonResult.getRESULT());
//			}
		}
	}
	
	/**
	 * 修改个人资料
	 * @throws IOException 
	 */
	public void testOauth() {
		 HashMap<String, String> headers = new HashMap<String, String>();  
		 headers.put("appkey", "3987311677");
		 headers.put("accountid", "zMm6mlT7jM");
		 headers.put("token", "lu64o3ul5m");
		 headers.put("timestamp", "lu64o3ul5m");
		 headers.put("sign", "lu64o3ul5m");
		 
		Map<String, String> param = new HashMap<String, String>();
		 
		 
		// 签名
		String sign = DkSha1Util.getSign(headers, param);
		param.put("sign", sign);
		
		log.info( JsonUtil.nonDefaultMapper().toJson(param));
		
		String result = HttpUtil.postJson("http://localhost:8080/oauth", JsonUtil.nonDefaultMapper().toJson(param),headers);
		if(result!=null){
			log.info(result);
//			JsonResult jsonResult = JsonUtil.nonDefaultMapper().fromJson(result, JsonResult.class);
//			if (jsonResult.getERRCODE().equals("0")) {
//				System.out.println("result: " + jsonResult.getRESULT());
//			}
		}
	}

	@org.junit.Test
	public void test(){
		testOauth();
	}
}
