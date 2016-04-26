
package me.daoke.roadrank.utils;

/**
 * 常量错误码
 * <p/>
 * User: chenlong
 * Date: 2015/1/20
 * Time: 11:35
 */
public class ConstantsUtil {
    //数据推送
//    public static String androidMasterSecret = "88b57598b41d83fc724c6253";
//    public static String anddroidJpushAppKey = "b11a8ceaad7f344581185622";

    public static String androidMasterSecret = "be8390d4ceb5be609d3c80e1";
    public static String anddroidJpushAppKey = "a72b2270d2fa5e2f97cc7451";

//    public static String iosMasterSecret = "88b57598b41d83fc724c6253";
//    public static String iosJpushAppKey = "b11a8ceaad7f344581185622";

    public static String iosMasterSecret = "be8390d4ceb5be609d3c80e1";
    public static String iosJpushAppKey = "a72b2270d2fa5e2f97cc7451";

    public static String appKey = "616515395";
    public static String secret = "B22DC8437E554347729108C66B7BB9A6699F81B1";

    public static String iOSppKey = "3987311677";
    public static String iOSSecret = "2F0BAD21824948423AC6E49CF91C845619E9BD19";

    //经纬度被放大的倍数、
    public static long magnifyMultiple = 10000000;





    public static String getAppKey(String appKey) {
        if ( appKey.equals(ConstantsUtil.iOSppKey)) {
            return ConstantsUtil.iOSppKey;
        } else if (appKey.equals(ConstantsUtil.appKey)) {
            return ConstantsUtil.appKey;
        } else {
            return ConstantsUtil.appKey;
        }
    }

    public static String getSecret(String appKey) {
        if ( appKey.equals(ConstantsUtil.iOSppKey)) {
            return ConstantsUtil.iOSSecret;
        } else if (appKey.equals(ConstantsUtil.appKey)) {
            return ConstantsUtil.secret;
        } else {
            return ConstantsUtil.secret;
        }
    }
/*
    public static String getAppKey(String appKey) {
        if ("iOS".equalsIgnoreCase(appKey) || appKey.equals(ConstantsUtil.iOSppKey)) {
            return ConstantsUtil.iOSppKey;
        } else if ("Android".equalsIgnoreCase(appKey)||appKey.equals(ConstantsUtil.appKey)) {
            return ConstantsUtil.appKey;
        } else {
            return ConstantsUtil.appKey;
        }
    }

    public static String getSecret(String appKey) {
        if ("iOS".equalsIgnoreCase(appKey) || appKey.equals(ConstantsUtil.iOSppKey)) {
            return ConstantsUtil.iOSSecret;
        } else if ("Android".equalsIgnoreCase(appKey) ||appKey.equals(ConstantsUtil.appKey)) {
            return ConstantsUtil.secret;
        } else {
            return ConstantsUtil.secret;
        }
    }*/

    /**
     * 成功code和描述
     */
    public static final String ERRORCODE_OK = "0";
    public static final String RESULT_OK = "ok";

    /**
     * 失败的Code的描述
     */
    public static final String ERRORCODE_FAIL = "1";
    public static final String RESULT_FAIL = "fail";


    //=============================内存中key=============================
    //内存中key的信息
    public static String imeiUserManagerMap = "imeiUserManagerMap";

    //接受zmq的queue
    public static String queueToZMQMSg = "queueToZMQMSg";

    //zmq对象
    public static String zmqObjMap = "zmqObjMap";
    public static String zmqSendObj = "zmqSendObj";  //发送数据的对象
    public static String zmqReceiveObj = "zmqReceiveObj";   //接收数据的对象

    //========================end 内存中key============================================




    //====================ZMQ协议常量定义================================

    public static int sendOrderBusinessType = 1;   //业务  发送指令
    public static int fileConfigBusinessType = 2;   //业务   文件配置
    public static int sendMsgBusinessType= 3;   //业务  消息发送


    //操作列表
    public static int orderOnePhoto = 1;       //指令中 单拍操作
    public static int orderAppointmentPhoto = 2;    //指令  预约拍摄
    public static int orderSelfPhotoFromTerminal = 3; //终端自己拍摄
    public static int bindDevice = 4; //绑定设备操作
    public static int unbindDevice = 5; //解除绑定操作
    public static int getCfg = 6; //获取配置文件
    public static int voicePlay = 7;  //语音播报指令

    //====================end ZMQ协议常量定义==============================




    //-------------预约拍照--------------
    public static int maxPhotoNum = 5;   //每个点最大的拍摄张数
    public static long maxPhotoTime = 86400000;   //每个预约点最大的拍摄时长

    public static void main(String[] args) {
		System.out.println(getSecret("616515395"));
	}

}
