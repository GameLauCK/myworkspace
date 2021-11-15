package com.springmvc.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

 
import com.springmvc.model.User;
import com.springmvc.service.UserService;


@Controller
public class ReadController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/read")
	public ModelAndView readUser(ModelAndView model) throws IOException {

		List<User> listuser = userService.read();
		model.addObject("listuser", listuser);
		model.setViewName("userlist");

		return model;
	}

}
