package com.springmvc.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.User;
import com.springmvc.service.UserService;

@Controller
public class UpdateController {
	
	@Autowired
	private UserService userService; 
	
	@RequestMapping(value = "/update/{userid}")
	public ModelAndView findStudentById(ModelAndView model, @PathVariable("userid") int userid)
			throws IOException {

		List<User> listuser = userService.findUserById(userid);
		model.addObject("listuser", listuser);
		model.setViewName("updatelist");

		return model;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateStudent( @RequestParam("username") String username,
			@RequestParam("firstname") String firstname, @RequestParam("lastname") String lastname,
			@RequestParam("email") String email, @RequestParam("password") String password, 
			@RequestParam("country") String country, @RequestParam("city") String city,
			@RequestParam("company") String company, @RequestParam("position") String position,
			@RequestParam("id") String id, ModelAndView model) {

		User user = new User();
		user.setUsername(username);
		user.setFirstname(firstname);
		user.setLastname(lastname); 
		user.setEmail(email);
		user.setPassword(password);
		user.setCountry(country);
		user.setCity(city);
		user.setCompany(company);
		user.setPosition(position);
		user.setId(id);
	

		int counter = userService.update(user);

		if (counter > 0) {
			model.addObject("msg", "User records updated against User id: " + user.getId());
		} else {
			model.addObject("msg", "Error- check the console log.");
		}

		model.setViewName("updateSuccess");

		return model;
	}
}
