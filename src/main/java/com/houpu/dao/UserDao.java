package com.houpu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import com.houpu.entity.User;

@Mapper
public interface UserDao {
	//验证用户名是否存在
	User loginByName(@Param("userName") String userName);
	//用户登录
	User login(@Param("userName") String userName,@Param("passWord") String passWord);
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
	List<User> mohucx(@Param("Agoni") String Agoni,@Param("CM") String CM);
}
