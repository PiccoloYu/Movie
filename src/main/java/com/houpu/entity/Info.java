package com.houpu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 网站动态更新电影信息实体类
 * @author HP
 *
 */
@Entity
@Table(name="t_info")
public class Info {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;//编号
	
	private long fid;//引用电影实体id
	
	private long wid;//引用电影网站id
	
	@Column(length=1000)
	private String infoUrl;//具体播放地址
	
	@Column(length=1000)
	private String infoRemark;//备注
	
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

	public long getFid() {
		return fid;
	}

	public void setFid(long fid) {
		this.fid = fid;
	}

	public long getWid() {
		return wid;
	}

	public void setWid(long wid) {
		this.wid = wid;
	}

	public String getInfoUrl() {
		return infoUrl;
	}

	public void setInfoUrl(String infoUrl) {
		this.infoUrl = infoUrl;
	}

	public String getInfoRemark() {
		return infoRemark;
	}

	public void setInfoRemark(String infoRemark) {
		this.infoRemark = infoRemark;
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
		return "Info [id=" + id + ", fid=" + fid + ", wid=" + wid
				+ ", infoUrl=" + infoUrl + ", infoRemark=" + infoRemark
				+ ", createUser=" + createUser + ", createTime=" + createTime
				+ ", updateUser=" + updateUser + ", updateTime=" + updateTime
				+ ", getId()=" + getId() + ", getFid()=" + getFid()
				+ ", getWid()=" + getWid() + ", getInfoUrl()=" + getInfoUrl()
				+ ", getInfoRemark()=" + getInfoRemark() + ", getCreateUser()="
				+ getCreateUser() + ", getCreateTime()=" + getCreateTime()
				+ ", getUpdateUser()=" + getUpdateUser() + ", getUpdateTime()="
				+ getUpdateTime() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
}
