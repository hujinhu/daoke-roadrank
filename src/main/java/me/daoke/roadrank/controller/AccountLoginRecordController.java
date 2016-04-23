package me.daoke.roadrank.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zhouhui
 * @date 2016/1/8
 */
@Controller
@RequestMapping("/accountLogin")
public class AccountLoginRecordController {


    private final Logger logger = Logger.getLogger(this.getClass());

    /***判断用户是否在线的路径*/
    @Value("#{apiConfig[getMobilePhoneByAccountID]}")
    private String getMobilePhoneByAccountID;

    /**
     * 用户登录
     * @return
     */
    @RequestMapping(value="/login")
    public String login(HttpServletRequest request,Model model){
//        CommonJsonResult commonJsonResult = new CommonJsonResult(ConstantsUtil.ERRORCODE_FAIL,"登录失败");
        try{
            //接收登录时传递的参数
            String accountID = request.getParameter("accountID");
            String accessToken = request.getParameter("accessToken");
            String accessTokenExpiration = request.getParameter("accessTokenExpiration");
            String refreshToken = request.getParameter("refreshToken");
            logger.info("accountID: "+ accountID);
            logger.info("accessToken: "+ accessToken);
            logger.info("accessTokenExpiration: "+ accessTokenExpiration);
            logger.info("refreshToken: "+ refreshToken);

            Map<String,Object> resultMap = new HashMap<String, Object>();
           if(accountID  == null || "".equals(accountID)){
//                commonJsonResult.setCommonJsonResult(ConstantsUtil.ERRORCODE_FAIL, "用户不存在");
                logger.info("用户不存在！！！！");
               resultMap.put("accountID",accountID );
               resultMap.put("loginFlag", 0); // 0 表示登录失败  1 表示登录成功

//               String loginResult = JsonMapper.toJson(resultMap,false);
//               model.addAttribute("loginResult",loginResult);
                return "jsp/success";
            }
            //插入用户登录记录 和令牌访问记录
////            Boolean flag =  accountLoginRecordService.insertAccountLoginRecord(accountID, accessToken, accessTokenExpiration, refreshToken);
//            if(flag){
//
//                //返回登录的基本信息
//               AccountInfo accountInfo =  accountInfoService.accountLoginSuccess(accountID);
//                if(accountInfo  == null){
//                    commonJsonResult.setCommonJsonResult(ConstantsUtil.ERRORCODE_FAIL, "用户不存在");
//                }
//                resultMap.put("accountID",accountID );
//                resultMap.put("loginFlag", 1); // 0 表示登录失败  1 表示登录成功
//
//                String loginResult = JsonMapper.toJson(resultMap,false);
//                model.addAttribute("loginResult",loginResult);
//            }
        }catch (Exception e){
              logger.info("登录失败");
        }
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
