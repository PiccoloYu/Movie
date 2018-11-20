package com.houpu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 用户管理实体类
 * @author HP
 *
 */

@Entity
@Table(name="t_user")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;//编号
	
	@Column(length=200)
	private String userName;//用户名
	
	@Column(length=100)
	private String passWord;//密码
	
	@Column(length=100)
	private String phone;//电话
	
	@Column(length=100)
	private String sex;//性别
	
	@Column(length=500)
	private String remark;//备注
	
	@Column(length=100)
	private String levels;//等级
	
	private int status;//状态
	
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getLevels() {
		return levels;
	}

	public void setLevels(String levels) {
		this.levels = levels;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
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
		return "User [id=" + id + ", userName=" + userName + ", passWord="
				+ passWord + ", phone=" + phone + ", sex=" + sex + ", remark="
				+ remark + ", levels=" + levels + ", status=" + status
				+ ", createUser=" + createUser + ", createTime=" + createTime
				+ ", updateUser=" + updateUser + ", updateTime=" + updateTime
				+ ", getId()=" + getId() + ", getUserName()=" + getUserName()
				+ ", getPassWord()=" + getPassWord() + ", getPhone()="
				+ getPhone() + ", getSex()=" + getSex() + ", getRemark()="
				+ getRemark() + ", getLevels()=" + getLevels()
				+ ", getStatus()=" + getStatus() + ", getCreateUser()="
				+ getCreateUser() + ", getCreateTime()=" + getCreateTime()
				+ ", getUpdateUser()=" + getUpdateUser() + ", getUpdateTime()="
				+ getUpdateTime() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

	public User(long id, String userName, String passWord, String phone,
			String sex, String remark, String levels, int status,
			String createUser, String createTime, String updateUser,
			String updateTime) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.phone = phone;
		this.sex = sex;
		this.remark = remark;
		this.levels = levels;
		this.status = status;
		this.createUser = createUser;
		this.createTime = createTime;
		this.updateUser = updateUser;
		this.updateTime = updateTime;
	}

	public User() {
		super();
	}
	
}
