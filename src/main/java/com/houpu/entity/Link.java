package com.houpu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 友情链接实体类
 * @author HP
 *
 */
@Entity
@Table(name="t_link")
public class Link {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;//编号
	
	@Column(length=200)
	private String linkName;//链接名称
	
	@Column(length=500)//链接地址
	private String linkUrl;
	
	@Column(length=100)
	private String createUser;//创建人
	
	@Column(length=100)
	private String createTime;//创建时间
	
	@Column(length=100)
	private String updateUser;//修改人
	
	@Column(length=100)
	private String updateTime;//修改时间

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLinkName() {
		return linkName;
	}

	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	@Override
	public String toString() {
		return "Link [id=" + id + ", linkName=" + linkName + ", linkUrl="
				+ linkUrl + ", createUser=" + createUser + ", createTime="
				+ createTime + ", updateUser=" + updateUser + ", updateTime="
				+ updateTime + ", getId()=" + getId() + ", getLinkName()="
				+ getLinkName() + ", getLinkUrl()=" + getLinkUrl()
				+ ", getCreateUser()=" + getCreateUser() + ", getCreateTime()="
				+ getCreateTime() + ", getUpdateUser()=" + getUpdateUser()
				+ ", getUpdateTime()=" + getUpdateTime() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
}
