package com.springmvc.service;

import java.util.List;

import com.springmvc.model.EmailValidation;
import com.springmvc.model.Login;
import com.springmvc.model.User;

public interface UserService {

  int register(User user);

  User validateUser(Login login);
  
  public List<User> read();
  
  public List<User> findUserById(int userid);
    
  public int update(User user);

  public int delete(int userid);
  
  public List<User> searchUser(String searchValue);
  
  User validateEmail(EmailValidation email);
  
  public int resetPassword(User user);
}
