package com.houpu.service;

import java.util.List;



import com.houpu.entity.User;

public interface UserService {

	//验证用户名是否存在
	User loginByName(String userName);
	//用户登录
	User login(String userName,String passWord);
	//查询所有
	List<User> selectAll();
	//单行查询
	User selectById(long id);
	//添加数据
	Integer insertUser(User user);
	//删除数据
	Integer updateStaff(long id);
	//修改数据
	Integer updateUser(User user);
	//模糊查询
	List<User> mohucx(String Agoni,String CM);
}
