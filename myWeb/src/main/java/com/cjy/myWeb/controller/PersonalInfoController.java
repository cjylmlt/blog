package com.cjy.myWeb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cjy.myWeb.po.Education;
import com.cjy.myWeb.po.User;
import com.cjy.myWeb.service.EducationService;
import com.cjy.myWeb.service.UserService;

@Controller
public class PersonalInfoController {
	@Autowired
	private UserService userService;
	@Autowired
	private EducationService educationService;
	@RequestMapping("/personalInfo/{userId}")
	public ModelAndView getPersonalInfo(@PathVariable("userId")String userId){
		User user = userService.findUserById(userId);
		List<Education> educationList = educationService.getEducationByUserId(userId);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("user", user);
		modelAndView.addObject("educationList", educationList);
		modelAndView.setViewName("personalInfo");
		return modelAndView;
	}
}
