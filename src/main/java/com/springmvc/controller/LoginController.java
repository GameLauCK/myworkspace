package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.Login;
import com.springmvc.model.User;
import com.springmvc.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView("login");
		model.addObject("login", new Login());
		
		return model;
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
		@ModelAttribute("login") Login login) {
		
		ModelAndView model = null;
		User user = userService.validateUser(login);
		
		if (null != user) {
			if(user.getRole() == 1) {
				model = new ModelAndView("admin");
				model.addObject("username", user.getUsername());
			} else {
				model = new ModelAndView("welcome");
				model.addObject("id", user.getId());
				model.addObject("username", user.getUsername());
				model.addObject("position", user.getPosition());
			}
		} else {
			model = new ModelAndView("login");
			model.addObject("message", "Username or Password is wrong!!");
		}
	
		return model;
	}

}
