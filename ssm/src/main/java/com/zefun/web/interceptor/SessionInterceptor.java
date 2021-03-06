package com.zefun.web.interceptor;

import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.zefun.common.log.AccessLog;
import com.zefun.common.utils.DateUtil;
import com.zefun.common.utils.StringUtil;

/**
 * 拦截需要登录的操作请求，输出日志，代表请求信息
 * 自动延长Token时长
 * @author sfit0254
 * @date 2014-4-26
 */
public class SessionInterceptor implements HandlerInterceptor {

    /**
     * 日志
     */
    private Logger logger = Logger.getLogger(SessionInterceptor.class);

    /**
     * 
     */
    private String[] allowUrlPatterns;

    /**
     * @param request request
     * @param response response
     * @param arg2 arg2
     * @throws Exception e
     * @return boolean
     */
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
        String tokenId = request.getHeader("tokenId");
        String requestUrl = request.getRequestURI().replace(request.getContextPath(), "");

        JSONObject json = new JSONObject();
        json.put("api_name", requestUrl);
        json.put("api_params", getRequstParams(request)); // 浏览器信息(APP客户端忽略)
        json.put("tokenId", tokenId);
        // json.put("userId", redisService.hget(tokenId, "userId"));
        json.put("region_code", request.getHeader("region_code")); // 地区编码
        json.put("language_code", request.getHeader("language_code")); // 语言编码
        json.put("screen_size", request.getHeader("screen_size")); // 硬件设备分辨率
        json.put("device_os", request.getHeader("device_os")); // 设备系统（0：android，1：IOS，2：其他）
        json.put("device_name", request.getHeader("device_name")); // 设备名称
        json.put("device_mark", request.getHeader("device_mark")); // 设备唯一标识
        json.put("device_ver", request.getHeader("device_ver")); // 设备版本号
        json.put("client_ip", StringUtil.getIpAddr(request));
        json.put("client_ver", request.getHeader("client_ver")); // 客户端版本号
        json.put("protocol_ver", request.getHeader("protocol_ver")); // 通讯协议版本号
        json.put("user_agent", request.getHeader("user-agent")); // 浏览器信息(APP客户端忽略)
        json.put("receive_time", DateUtil.getCurTime()); // 浏览器信息(APP客户端忽略)

        AccessLog.log(logger, "request info : " + json.toString());

        for (String url : allowUrlPatterns) {
            if (Pattern.matches("^" + url + "$", requestUrl)) {
                return true;
            }
        }
        return true;
    }

    /**
     * 
    * @author Page.java
    * @date 2015年8月11日 下午2:59:09
    * @param request r
    * @return String
     */
    private String getRequstParams(HttpServletRequest request) {
        StringBuffer sb = new StringBuffer("");
        @SuppressWarnings("unchecked")
        Map<String, String[]> params = request.getParameterMap();
        for (String key : params.keySet()) {
            String[] values = params.get(key);
            for (int i = 0; i < values.length; i++) {
                String value = values[i];
                sb.append(key + "=" + value + "&");
            }
        }
        if (sb.length() > 3) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    /**
     * @param arg0 arg0
     * @param arg1 arg1
     * @param arg2 arg2
     * @param arg3 arg3
     * @throws Exception 异常
     */
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3) throws Exception {
    }

    /**
     * @param arg0 arg0
     * @param arg1 arg1
     * @param arg2 arg2
     * @param arg3 arg3
     * @throws Exception 异常
     */
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3) throws Exception {
    }

    public void setAllowUrlPatterns(String[] allowUrlPatterns) {
        this.allowUrlPatterns = allowUrlPatterns;
    }
}