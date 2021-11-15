package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.UserDao;
import com.springmvc.model.EmailValidation;
import com.springmvc.model.Login;
import com.springmvc.model.User;

@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	public UserDao userDao;

  	public int register(User user) {
  		return userDao.register(user);
  	}

  	public User validateUser(Login login) {
  		return userDao.validateUser(login);
  	}

  	public List<User> read() {
	  	return userDao.read();
  	}

	public int update(User user) {
		return userDao.update(user);
}

	public int delete(int userid) {
		return userDao.delete(userid);
	}

	public List<User> findUserById(int userid) {
		return userDao.findUserById(userid);
	}

	public List<User> searchUser(String searchValue) {
		return userDao.searchUser(searchValue);
	}
	
	public User validateEmail(EmailValidation email) {
		return userDao.validateEmail(email);
	}
	
	public int resetPassword(User user) {
		return userDao.resetPassword(user);
	}
}
