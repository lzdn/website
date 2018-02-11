package com.note.website.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.note.website.conf.UrlGrantedAuthority;
import com.note.website.core.entity.User;
import com.note.website.core.repository.UserRepository;
 

@Service("authUserService")
public class AuthUserServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String userName) { // 重写loadUserByUsername 方法获得 userdetails 类型用户

		User user = userRepository.userByUserName(userName);
		if (user != null) {
		//	List<Permission> permissions = permissionDao.getByUserId(user.getId());
			List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
			GrantedAuthority grantedAuthority =new UrlGrantedAuthority("/index","index");
			grantedAuthorities.add(grantedAuthority);
			/*for (Permission permission : permissions) {
				if (permission != null && permission.getName() != null) {
					GrantedAuthority grantedAuthority = new UrlGrantedAuthority(permission.getPermissionUrl(),
							permission.getMethod());
					grantedAuthorities.add(grantedAuthority);
				}
			}*/
			//user.setGrantedAuthorities(grantedAuthorities);
			user.setAuthorities(grantedAuthorities);
			return user;
		} else {
			throw new UsernameNotFoundException("用户名: " + userName + " do not exist!");
		}
	}
}
