package com.springmvc.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.service.UserService;

@Controller
public class DeleteController {
	
 
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/delete/{userid}")
	public ModelAndView deleteStudentById(ModelAndView model, 
			@PathVariable("userid") int userid)
			throws IOException {

		int counter = userService.delete(userid);

		if (counter > 0) {
			model.addObject("msg", "User records deleted against User id: " + userid);
		} else {
			model.addObject("msg", "Error- check the console log.");
		}

		model.setViewName("delete");

		return model;

 }
}
