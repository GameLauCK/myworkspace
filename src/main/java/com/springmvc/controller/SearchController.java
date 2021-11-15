package com.springmvc.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.User;
import com.springmvc.service.UserService;

@Controller
public class SearchController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/searchResult")
	public ModelAndView searchResult(ModelAndView model, 
			@RequestParam("searchValue") String searchValue) 
			throws IOException{
		
		List<User> listuser = userService.searchUser(searchValue);
		model.addObject("listuser", listuser);
		model.setViewName("searchResult");
		
		return model;
	}
	
}
