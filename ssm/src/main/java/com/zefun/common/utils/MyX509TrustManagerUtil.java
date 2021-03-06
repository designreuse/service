package com.zefun.common.utils;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.X509TrustManager;

/**
 * 证书信任管理器（用于HTTPS请求）
 */
public class MyX509TrustManagerUtil implements X509TrustManager {

    /**
     * @param chain c
     * @param authType t
     * @throws CertificateException 异常
     */
    public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
    }

    /**
     * @param chain c
     * @param authType t
     * @throws CertificateException 异常
     */
    public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
    }

    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}