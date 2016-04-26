package me.daoke.roadrank;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import me.daoke.roadrank.utils.ConstantsUtil;
import me.daoke.roadrank.utils.DkSha1Util;
import me.daoke.roadrank.utils.HttpUtil;
import me.daoke.roadrank.utils.JsonUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TestUserInfo {
	private Logger log = LoggerFactory.getLogger(this.getClass());

	/**
	 * 获取个人资料
	 * @throws IOException 
	 */
	public void testQueryInfoByID(){
		//headers
		 HashMap<String, String> headers = new HashMap<String, String>();  
		 headers.put("accountid", "zMm6mlT7jM");
		 headers.put("accesstoken", "lu64o3ul5m");
		 headers.put("timestamp", "lu64o3ul5m");
		 headers.put("appkey", ConstantsUtil.appKey);

		 //bodys
		 Map<String, String> param = new HashMap<String, String>();
		 param.put("accountID", "zMm6mlT7jM");
		 param.put("nickName", "科比-布莱恩特");
		 param.put("headPic", "http:// clubapp.daoke.me/club/resource/head_big.png");
		// 计算sign
		headers.put("sign", DkSha1Util.getSign(headers,param));
		
		
		String result = HttpUtil.postJson("http://localhost:8080/accountInfo/queryInfoByID/", JsonUtil.nonDefaultMapper().toJson(param),headers);
		if(result!=null){
			log.info(result);
//			JsonResult jsonResult = JsonUtil.nonDefaultMapper().fromJson(result, JsonResult.class);
//			if (jsonResult.getERRCODE().equals("0")) {
//				System.out.println("result: " + jsonResult.getRESULT());
//			}
		}
	}
	
	
	
//	sign计算所需要的字段现统一如下：
//	1. 所有body里的参数
//	2. header里的 appkey，accountid，timestamp，等
//	3. appkey对应的secret（secret作为加密参数，但是不作为接口传递参数)
//	
	//车队队长登录
//    Map<String, String> param = new HashMap<String, String>(6);
//    param.put("appKey", ConstantsUtil.APPKEY);
//    param.put("secret", ConstantsUtil.SECRET);
//    param.put("username", "18502120620");
//    param.put("daokePassword", "ppooii");
//    param.put("clientIP", "127.0.0.7");
//    //签名
//    String sign = SHASignature.sign(ParameterUtil.getSignData(param));
//    param.put("sign", sign);
//    HttpRequester requester = new HttpRequester();
//    HttpRespons respons = requester.sendPost("http://api.daoke.io/accountapi/v2/checkLogin", param);
//    Map<String, String> resParam = null;
//    Map model = new HashMap();
//    if (respons.getCode() == ConstantsUtil.HttpStatusCode.OK) {
//        String content = respons.getContent();
//        CommonJsonResult jsonResult1 = (CommonJsonResult) JsonMapper.fromJson(content, CommonJsonResult.class);
//        if (jsonResult1.getERRORCODE().equals(ConstantsUtil.DaoKeStatusCode.OK)) {
//             System.out.print(jsonResult1.getRESULT());
//        }
//    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * 修改个人资料
	 * @throws IOException 
	 */
	public void testUpdateInfoByID() {
		 HashMap<String, String> headers = new HashMap<String, String>();  
		 headers.put("appkey", "3987311677");
		 headers.put("accountid", "zMm6mlT7jM");
		 headers.put("token", "lu64o3ul5m");
		 headers.put("timestamp", "lu64o3ul5m");
		 headers.put("sign", "lu64o3ul5m");
		 
		Map<String, String> param = new HashMap<String, String>();
		 param.put("accountID", "zMm6mlT7jM");
		 param.put("nickName", "科比-布莱恩特");
		 param.put("headPic", "http:// clubapp.daoke.me/club/resource/head_big.png");
		 param.put("birthday", "2016-03-03");
		 param.put("sex", "1");
		 param.put("cityName", "上海");
		 param.put("cityCode", "310000");
		 param.put("introduction", "我为车狂");
		 param.put("carBrand", "宝骏");
		 param.put("carModel", "730");
		 param.put("carNumber", "豫G 88888");
		 
		// 签名
//		String sign = SHASignature.sign(ParameterUtil.getSignData(param));
//		param.put("sign", sign);
		
		log.info( JsonUtil.nonDefaultMapper().toJson(param));
		
		String result = HttpUtil.postJson("http://localhost:8080/accountInfo/updateInfoByID/", JsonUtil.nonDefaultMapper().toJson(param),headers);
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
		testQueryInfoByID();
//		testUpdateInfoByID();
	}
}
