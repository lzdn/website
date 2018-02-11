package com.note.website.core.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.alibaba.fastjson.annotation.JSONType;
import com.note.website.common.entity.BaseEntity;

@Entity
@Table(name = "t_user")
@JSONType(orders = { "userId", "userName", "password", "status","email" })
public class User extends BaseEntity implements UserDetails{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private Integer userId;

	@NotBlank(message = "姓名不能为空")
	@Column(name = "user_name", length = 15, nullable = false)
	private String userName;

	@NotBlank(message = "密码不能为空")
	@Column(name = "password", length = 128, nullable = false)
	private String password;

	@Column(name = "status", length = 1, nullable = false)
	private Integer status;
	
	@Column(name = "email", length = 32, nullable = false)
	private String email;


	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

	@Transient
	private List<? extends GrantedAuthority> authorities;


	public List<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(List<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}


	@Override
	public String getUsername() {
		return this.userName;
	}
	 
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", status=" + status
				+ ", email=" + email + "]";
	}

 
}
