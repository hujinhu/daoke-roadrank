package me.daoke.roadrank.utils;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import org.apache.http.conn.ssl.TrustStrategy;
/**
 * 
 * @ClassName: AnyTrustStrategy
 * @Description:信任所有
 * @version 创建时间：2015年11月19日下午8:40:16
 */
public 	class AnyTrustStrategy implements TrustStrategy{
    public boolean isTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        return true;
    }
}