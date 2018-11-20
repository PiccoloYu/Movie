package com.houpu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

/**
 * 电影实体
 * @author HP
 *
 */
@Entity
@Table(name="t_film")
public class Film {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;//编号
	
	@Column(length=200)
	private String filmName;//电影名称
	
	@Column(length=200)
	private String title;//帖子标题
	
	@Lob
	@Column(columnDefinition="TEXT")
	private String content;//帖子内容
	
	@Column(length=300)
	private String imageName;//电影图片
	
	private int hot;//是否推荐热门  1热门0非热门
	
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

	public String getFilmName() {
		return filmName;
	}

	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public int getHot() {
		return hot;
	}

	public void setHot(int hot) {
		this.hot = hot;
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
		return "Film [id=" + id + ", filmName=" + filmName + ", title=" + title
				+ ", content=" + content + ", imageName=" + imageName
				+ ", hot=" + hot + ", createUser=" + createUser
				+ ", createTime=" + createTime + ", updateUser=" + updateUser
				+ ", updateTime=" + updateTime + ", getId()=" + getId()
				+ ", getFilmName()=" + getFilmName() + ", getTitle()="
				+ getTitle() + ", getContent()=" + getContent()
				+ ", getImageName()=" + getImageName() + ", getHot()="
				+ getHot() + ", getCreateUser()=" + getCreateUser()
				+ ", getCreateTime()=" + getCreateTime() + ", getUpdateUser()="
				+ getUpdateUser() + ", getUpdateTime()=" + getUpdateTime()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
}
