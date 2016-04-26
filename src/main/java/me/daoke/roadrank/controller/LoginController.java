package me.daoke.roadrank.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.daoke.roadrank.annotation.NeedAccountId;
import me.daoke.roadrank.controller.base.BaseController;
import me.daoke.roadrank.dto.LoginConfig;
import me.daoke.roadrank.dto.UserInfo;
import me.daoke.roadrank.enumeration.ErrorCode;
import me.daoke.roadrank.pojo.BaseLoginInfo;
import me.daoke.roadrank.service.ILoginConfigService;
import me.daoke.roadrank.service.IUserInfoService;
import me.daoke.roadrank.utils.JsonResult;
import me.daoke.roadrank.utils.JsonUtil;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
@RequestMapping("/login")
public class LoginController  extends BaseController{
    private final Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ILoginConfigService loginConfigService;
	@Autowired
	private IUserInfoService userInfoService;
    /**
     * 用户登录
     * @return
     */
    @RequestMapping
    @NeedAccountId
    @ResponseBody
    public JsonResult login(HttpServletRequest request,Model model){
    	
//    body体
    	
//    	 "imei": "147258369015935",
//    	    "imsi": "460011234453214",
//    	    "modeVer": "sanxing",
//    	    "androidVer": "5.4",
//    	    "baseBandVer": "",
//    	    "kernelVer": "",
//    	    "buildVer": "",
//    	    "lcdWidth": 960,
//    	    "lcdHeight": 640
//    	    
    	    
		String appKey = request.getHeader("appkey");
    	LoginConfig loginConfig = loginConfigService.getByappKey(appKey);
		UserInfo userInfo = userInfoService.getUserByAccount(this.getAccountId());
		if(loginConfig==null || userInfo==null){
			return JsonResult.failure(ErrorCode.APPKEY_ERROR);
		}
		BaseLoginInfo baseLoginInfo = new BaseLoginInfo();
		try {
			PropertyUtils.copyProperties(baseLoginInfo, loginConfig);
			baseLoginInfo.setAccountID(this.getAccountId());
			baseLoginInfo.getUserInfo().setCity(userInfo.getCity());
			baseLoginInfo.getUserInfo().setCity(userInfo.getCity());
			baseLoginInfo.getUserInfo().setGender(userInfo.getGender());
			baseLoginInfo.getUserInfo().setHeadName(userInfo.getHeadName());
			baseLoginInfo.getUserInfo().setNickname(userInfo.getNickname());
			
			//以下值要重写
			baseLoginInfo.setMsgToken("1478523690");
			baseLoginInfo.setToken(RandomStringUtils.randomNumeric(10));//随机生成10位数字字符串
			
		} catch ( Exception e){
			e.printStackTrace();
			return JsonResult.failure(ErrorCode.SYSTEM_BUSY);
		}
    	log.info(JsonUtil.nonDefaultMapper().toJson(baseLoginInfo));
		return JsonResult.success(baseLoginInfo);
    }

    @RequestMapping("oauth")
    @NeedAccountId
	public String oauth(HttpServletResponse response, HttpServletRequest request, Model model) {
		//String accountid = this.getAccountId();
//		String accessToken = request.getHeader("accesstoken");
//		String accessTokenExpiration = request.getHeader("accesstokenexpiration");
//		String refreshToken = request.getHeader("refreshtoken");
//		String refreshTokenExpiration = request.getHeader("refreshtokenexpiration");

		// model.addAttribute("", JsonResult.failure(ErrorCode.APPKEY_ERROR));
		model.addAttribute("loginResult", JsonResult.success("{accessToken:\"" + 1111 + "\",accountID:\"" + this.getAccountId() + "\"}"));
		return "success";
	}
}
