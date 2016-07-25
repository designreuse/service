package com.ucs.security.context;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.ucs.security.face.SecurityTestInterface;
import com.ucs.security.pojo.Users;
/**
 * ��spring-security.xml�����������
 * <authentication-manager>
		<authentication-provider user-service-ref="myUserDetailsService" />
  </authentication-manager>
 * ����ʹ����������Ȩ�޵���֤��
 * 
 * **/
@Service("myUserDetailsService")
public class MyUserDetailsService implements UserDetailsService{
	@Resource
	private SecurityTestInterface dao;

	//��¼��֤
	public UserDetails loadUserByUsername(String name)
			throws UsernameNotFoundException {
		System.out.println("show login name��"+name+" ");
		Users users =dao.findbyUsername(name);
		Set<GrantedAuthority> grantedAuths=obtionGrantedAuthorities(users);
		
		boolean enables = true;
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;
		//��װ��spring security��user
		User userdetail = new User(users.getName(), users.getPassword(), enables, accountNonExpired, credentialsNonExpired, accountNonLocked, grantedAuths);
		return userdetail;
	}
	//�����û�Ȩ��
	public Set<GrantedAuthority> obtionGrantedAuthorities(Users users){
		String roles[] = users.getRole().split(",");
		Set<GrantedAuthority> authSet=new HashSet<GrantedAuthority>();
		for (int i = 0; i < roles.length; i++) {
			authSet.add(new GrantedAuthorityImpl(roles[i]));
		}
		return authSet;
	}

}
