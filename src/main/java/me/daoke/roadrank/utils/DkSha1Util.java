package me.daoke.roadrank.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.digest.DigestUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 道客签名校验工具类
 * @author 作者：<a href="mailto:1933549135@qq.com">胡金虎</a>
 * @version 创建时间：2016年4月26日 上午11:44:53 
 */
public class DkSha1Util {
	private static Logger log = LoggerFactory.getLogger(DkSha1Util.class);

	// 需要参与签名检验的header参数
	public static final String HEADER_STR = "appkey,timestamp,accountid,accesstoken,";

	public static String sha1(byte[] body) {
		return new String(Hex.encodeHex(body)).toUpperCase();
	}

	@SuppressWarnings("deprecation")
	public static String sha1(String body) {
		return sha1(DigestUtils.sha(body));
	}

	/**
	 * SHA2，map元素排序之后SHA
	 * @param params
	 * @return
	 */
	public static String sha1(Map<String, String> params) {
		List<String> keyList = new ArrayList<String>(params.keySet());
		Collections.sort(keyList);
		StringBuilder sb = new StringBuilder();
		for (String key : keyList) {
			String value = params.get(key);
			sb.append(key).append(value);
		}
		params.remove("secret");// 计算后删除secret
		String sha1 = sb.toString();
		return sha1(sha1);
	}

	/**
	 * 加密
	 * @param headers
	 * @param param
	 * @return 
	 */
	public static String getSign(Map<String, String> headers, Map<String, String> param) {
		Map<String, String> allMap = new HashMap<String, String>();
		allMap.putAll(headers);
		allMap.putAll(param);
		allMap.put("secret", ConstantsUtil.getSecret(headers.get("appkey")));// secret参与计算
		return sha1(allMap);
	}

	/**
	 * 校验签名是否一致
	 * @param request
	 * @return 
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static boolean signValidate(HttpServletRequest request) {
		try {
			// 获取头部的签名
			String signHeader = request.getHeader("sign");
			// 取header
			Map<String, String> headers = new HashMap<String, String>();
			Enumeration headerNames = request.getHeaderNames();
			while (headerNames.hasMoreElements()) {
				String key = (String) headerNames.nextElement();
				if (HEADER_STR.contains(key+",")) {
					headers.put(key, request.getHeader(key));
				}
			}
			// 取body
			Map<String, String> param = new HashMap<String, String>();
			String body = getBodyString(request.getReader());
			if (StringUtil.isNotEmpty(body)) {
				param = JsonUtil.nonDefaultMapper().fromJson(body, Map.class);
			}
			// 加密取sign
			String sign = DkSha1Util.getSign(headers, param);
			// 检验sign
			if (sign.equals(signHeader)) {
				return true;
			}
		} catch (Exception e) {
			log.error("校验签名异常", e);
			return false;
		}
		return false;
	}

	/**
	 * 获取body内容
	 * @param br
	 * @return 
	 */
	public static String getBodyString(BufferedReader br) {
		String inputLine;
		StringBuilder sb = new StringBuilder();
		try {
			while ((inputLine = br.readLine()) != null) {
				sb.append(inputLine);
			}
			br.close();
		} catch (IOException e) {
			System.out.println("IOException: " + e);
		}
		return sb.toString();
	}

	public static void main(String[] args) {
		HashMap<String, String> headers = new HashMap<String, String>();
		headers.put("appkey", "3987311677");
		headers.put("accountid", "zMm6mlT7jM");
		headers.put("token", "lu64o3ul5m");
		headers.put("timestamp", "lu64o3ul5m");
		headers.put("appKey", ConstantsUtil.appKey);
		Map<String, String> param = new HashMap<String, String>();
		// 计算sign
		String sign = DkSha1Util.getSign(headers, param);
		System.out.println(sign);
	}

}