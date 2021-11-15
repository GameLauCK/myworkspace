package com.springmvc.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.User;
import com.springmvc.service.UserService;

@Controller
public class ViewProfileController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/viewprofile/{id}")
	public ModelAndView ViewProfile(ModelAndView model, @PathVariable("id") int userid)
			throws IOException {
		
		List<User> listuser = userService.findUserById(userid);
		model.addObject("listuser", listuser);
		model.setViewName("profile");
		return model;
	}
}
