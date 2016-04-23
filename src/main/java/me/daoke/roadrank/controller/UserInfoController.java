package me.daoke.roadrank.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.daoke.roadrank.annotation.NeedAccountId;
import me.daoke.roadrank.controller.base.BaseController;
import me.daoke.roadrank.dto.UserInfo;
import me.daoke.roadrank.enumeration.ErrorCode;
import me.daoke.roadrank.pojo.BaseUserInfo;
import me.daoke.roadrank.service.IUserInfoService;
import me.daoke.roadrank.utils.JsonResult;

import org.apache.commons.beanutils.PropertyUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/accountInfo")
public class UserInfoController  extends BaseController{

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private IUserInfoService userInfoService;

	/**
	 * 获取个人资料
	 * @param accountid
	 * @return 
	 */
	@RequestMapping("queryInfoByID")
	@ResponseBody
	@NeedAccountId
	public JsonResult queryInfoByID() {
		UserInfo userInfo = userInfoService.getUserByAccount(this.getAccountId());
		if (userInfo == null) {
			return JsonResult.failure(ErrorCode.SYSTEM_BUSY);
		}
		BaseUserInfo baseUserInfo = new BaseUserInfo();
		try {
			PropertyUtils.copyProperties(baseUserInfo, userInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return JsonResult.success(baseUserInfo);
	}

	/**
	 * 修改个人资料
	 * @param accountid
	 * @return 
	 */
	@RequestMapping(value ="updateInfoByID", method = {RequestMethod.POST },consumes="application/json")
	@ResponseBody
	public JsonResult updateInfoByID(HttpServletResponse response,HttpServletRequest request,@RequestBody BaseUserInfo baseUserInfo ) {
		if(baseUserInfo== null || !(this.getAccountId().equals(baseUserInfo.getAccountID()))){
			return JsonResult.failure(ErrorCode.SIGN_ERROR);
		}
		UserInfo userInfo = userInfoService.getUserByAccount(this.getAccountId());
		if (userInfo == null) {
			return JsonResult.failure(ErrorCode.SYSTEM_BUSY);
		}
		try {
			PropertyUtils.copyProperties(userInfo, baseUserInfo);
		}   catch ( Exception e) {
			log.error("PropertyUtils.copyProperties 异常",e);
			return JsonResult.failure(ErrorCode.SYSTEM_BUSY);
		} 
		userInfoService.updateUser(userInfo);
		return JsonResult.success();
	}

}
