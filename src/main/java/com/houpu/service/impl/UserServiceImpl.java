package com.houpu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.houpu.dao.UserDao;
import com.houpu.entity.User;
import com.houpu.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao userDao;

	//验证用户名是否存在
	public User loginByName(String userName) {
		// TODO Auto-generated method stub
		return userDao.loginByName(userName);
	}
	//用户登录
	public User login(String userName, String passWord) {
		// TODO Auto-generated method stub
		return userDao.login(userName, passWord);
	}
	//查询所有
	public List<User> selectAll() {
		// TODO Auto-generated method stub
		return userDao.selectAll();
	}
	//单行查询
	public User selectById(long id) {
		// TODO Auto-generated method stub
		return userDao.selectById(id);
	}
	//添加数据
	public Integer insertUser(User user) {
		// TODO Auto-generated method stub
		return userDao.insertUser(user);
	}
	//删除数据
	public Integer updateStaff(long id) {
		// TODO Auto-generated method stub
		return userDao.updateStaff(id);
	}
	//修改数据
	public Integer updateUser(User user) {
		// TODO Auto-generated method stub
		return userDao.updateUser(user);
	}
	//模糊查询
	public List<User> mohucx(String Agoni, String CM) {
		// TODO Auto-generated method stub
		return userDao.mohucx(Agoni, CM);
	}
}
