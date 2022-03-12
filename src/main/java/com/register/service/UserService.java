package com.register.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.register.dao.UserDao;
import com.register.model.User;

@Service
public class UserService {
	@Autowired
	public UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public int insert(User user) {
		int save = userDao.insertUser(user);
		return save;
	}
	
	public void update(User user) {
		userDao.updateUser(user);
	}
	
	public void delete(int UserId) {
		userDao.deleteUser(UserId);
	}
	
	public User get(int userId) {
		User user = userDao.getUser(userId);
		return user;
	}
	
	public List<User> getAll(){
		List<User> users = userDao.getAllUsers();
		return users;
	}
}
