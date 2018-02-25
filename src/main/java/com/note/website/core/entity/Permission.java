package com.note.website.core.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.annotation.JSONType;
import com.note.website.common.entity.BaseEntity;

@Entity
@Table(name = "t_permission")
@JSONType(orders = { "id", "name", "descritpion", "url", "pid" })
public class Permission extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	// 权限名称
	@Column(name = "name", length = 128, nullable = false)
	private String name;

	// 授权链接
	@Column(name = "url", length = 128, nullable = false)
	private String url;

	// 权限描述
	@Column(name = "description", length = 500)
	private String description;

	// 父节点id
	@Column(name = "pid", length = 11, nullable = false)
	private int pid;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	@Override
	public String toString() {
		return "Permission [id=" + id + ", name=" + name + ", url=" + url + ", description=" + description + ", pid="
				+ pid + "]";
	}
	
 
}
