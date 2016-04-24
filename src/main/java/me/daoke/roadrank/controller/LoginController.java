package me.daoke.roadrank.controller;

import javax.servlet.http.HttpServletRequest;

import me.daoke.roadrank.annotation.NeedAccountId;
import me.daoke.roadrank.dto.LoginConfig;
import me.daoke.roadrank.service.ILoginConfigService;
import me.daoke.roadrank.utils.JsonUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/login")
public class LoginController {
    private final Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ILoginConfigService loginConfigService;
	
    /**
     * 用户登录
     * @return
     */
    @RequestMapping
    @NeedAccountId
    public String login(HttpServletRequest request,Model model){
		String appKey = request.getHeader("appkey");
    	LoginConfig loginConfig = loginConfigService.getByappKey(appKey);
    	log.info(JsonUtil.nonDefaultMapper().toJson(loginConfig));
        return "jsp/success";
    }
    /**
     * 登录获取基本信息
     * @param appKey
     * @return
     */
//    @RequestMapping(value="/loginForBasicInfo")
//    @ResponseBody
//    public CommonJsonResult loginForBasicInfo(@RequestParam String accountID,@RequestParam String appKey){
//        CommonJsonResult commonJsonResult = new CommonJsonResult(ConstantsUtil.ERRORCODE_FAIL,"登录失败");
//        try{
//              Map<String,Object> resultMap = new HashMap<String, Object>();
//            //返回登录的基本信息
//              AccountInfo accountInfo =  accountInfoService.accountLoginSuccess(accountID);
//             if(accountInfo  == null){
//                commonJsonResult.setCommonJsonResult(ConstantsUtil.ERRORCODE_FAIL, "用户不存在");
//                return commonJsonResult;
//             }
//               //封装用户的基本信息
//               Map accountInfoMap = PackageOperationService.packageAccountNormalInfo(accountInfo);
//                //封装用户手机号
//               String mobile = accountLoginRecordService.findMobilePhoneByAccountID(appKey,accountID,getMobilePhoneByAccountID);
//               accountInfoMap.put("mobile",mobile);
//
//                resultMap.put("accountInfo", accountInfoMap);
//                //用户绑定设备的信息
//                DeviceBind deviceBind = deviceBindService.queryNowBindDevice(accountID);
//                Map deviceBindMap = PackageOperationService.packageDeviceBindInfo(deviceBind);
//                resultMap.put("deviceBindInfo",deviceBindMap);
//                commonJsonResult.setCommonJsonResult(ConstantsUtil.ERRORCODE_OK,resultMap);
//
//        }catch (Exception e){
//              logger.info("登录失败");
//        }
//        return commonJsonResult;
//    }

}
