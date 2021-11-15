package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.EmailValidation;
import com.springmvc.model.User;
import com.springmvc.service.UserService;

@Controller
public class ResetPasswordController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/validateEmail", method = RequestMethod.GET)
	public ModelAndView linkToResetPasswordPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView("validateEmail");
		model.addObject("validateEmail", new EmailValidation());
		return model;
	}
	
	@RequestMapping(value="/resetPassword", method = RequestMethod.POST)
	public ModelAndView validateEmail(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("validateEmail") EmailValidation email) {
		
		ModelAndView model = null;
		User user = userService.validateEmail(email);
		
		if(null != user) {
			model = new ModelAndView("resetPassword");
			model.addObject("email", user.getEmail());
		} else {
			model = new ModelAndView("validateEmail");
			model.addObject("message", "This email is not existed!");
		}
		return model;
	}
	
	@RequestMapping(value="/checkedReset", method = RequestMethod.POST)
	public ModelAndView resetPassword(@RequestParam("email")String email,
			@RequestParam("password") String password, ModelAndView model) {
		
		User user = new User();
		user.setPassword(password);
		user.setEmail(email);
		
		int counter = userService.resetPassword(user);

		if (counter > 0) {
			model.setViewName("resetSuccess");
			model.addObject("msg", "Password is reset successfully!");
		} else {
			model.setViewName("resetPassword");
			model.addObject("msg", "Error- check the console log.");
		}
		return model;
	}
}
