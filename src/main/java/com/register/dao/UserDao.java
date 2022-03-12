package com.register.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.register.model.User;

@Repository
public class UserDao {
	@Autowired
	public HibernateTemplate template;
	
	@Transactional
	public int insertUser(User user) {
		Serializable save = template.save(user);
		return (Integer)save;
	}
	
	@Transactional
	public void updateUser(User user) {
		template.update(user);
		System.out.println("user has been update successfully");
	}
	
	@Transactional
	public void deleteUser(int userId) {
		User user = template.get(User.class, userId);
		template.delete(user);
		System.out.println("user has been deleted successfully");
	}
	
	public User getUser(int userId) {
		User user = template.get(User.class, userId);
		return user;
	}
	
	public List<User> getAllUsers(){
		List<User> users = template.loadAll(User.class);
		return users;
	}
}
