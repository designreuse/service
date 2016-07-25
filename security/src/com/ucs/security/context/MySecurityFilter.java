package com.ucs.security.context;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.log4j.Logger;
import org.springframework.security.access.SecurityMetadataSource;
import org.springframework.security.access.intercept.AbstractSecurityInterceptor;
import org.springframework.security.access.intercept.InterceptorStatusToken;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;



public class MySecurityFilter extends AbstractSecurityInterceptor implements Filter {
	Logger log=Logger.getLogger(MySecurityFilter.class);
	
	private FilterInvocationSecurityMetadataSource securityMetadataSource;
	
	public SecurityMetadataSource obtainSecurityMetadataSource() {
		return this.securityMetadataSource;
	}
	public FilterInvocationSecurityMetadataSource getSecurityMetadataSource() {
		return securityMetadataSource;
	}

	public void setSecurityMetadataSource(
			FilterInvocationSecurityMetadataSource securityMetadataSource) {
		this.securityMetadataSource = securityMetadataSource;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		FilterInvocation fi=new FilterInvocation(req,res,chain);
		log.info("--------MySecurityFilter--------");
		invok(fi);
	}

	

	private void invok(FilterInvocation fi) throws IOException, ServletException {
		// objectΪFilterInvocation����
		//1.��ȡ������Դ��Ȩ��
		//ִ��Collection<ConfigAttribute> attributes = SecurityMetadataSource.getAttributes(object);
		//2.�Ƿ�ӵ��Ȩ��
		//��ȡ��ȫ���壬����ǿ��ת��ΪUserDetails��ʵ��
		//1) UserDetails
		// Authentication authenticated = authenticateIfRequired();
		//this.accessDecisionManager.decide(authenticated, object, attributes);
		//�û�ӵ�е�Ȩ��
		//2) GrantedAuthority
		//Collection<GrantedAuthority> authenticated.getAuthorities()
		log.info("�û��������� ");
		InterceptorStatusToken token = null;
		
		token = super.beforeInvocation(fi);
		
		try {
			fi.getChain().doFilter(fi.getRequest(), fi.getResponse());
		} finally {
			super.afterInvocation(token, null);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
	public Class<? extends Object> getSecureObjectClass() {
		//�����MyAccessDecisionManager��supports�������Ż�true,������������ʹ���
		return FilterInvocation.class;
	}
	

}
