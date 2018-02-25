package com.note.website.conf;

import org.springframework.security.core.GrantedAuthority;

public class UrlGrantedAuthority implements GrantedAuthority {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String permissionUrl;
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public UrlGrantedAuthority(String permissionUrl, String name) {
		this.permissionUrl = permissionUrl;
		this.name = name;
	}

	public String getPermissionUrl() {
		return permissionUrl;
	}

	public void setPermissionUrl(String permissionUrl) {
		this.permissionUrl = permissionUrl;
	}

 
	@Override
	public String getAuthority() {
		return this.name ;
	}

}
