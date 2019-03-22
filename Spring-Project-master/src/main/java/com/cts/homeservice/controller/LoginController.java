package com.cts.homeservice.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.homeservice.bean.Admin;
import com.cts.homeservice.bean.User;
import com.cts.homeservice.service.AdminService;
import com.cts.homeservice.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private AdminService adminService;

@RequestMapping(value="index.html", method=RequestMethod.GET)
	public String getLoginPage()
	{
		return "index";
	}


@RequestMapping(value="userLogin.html", method=RequestMethod.POST)
public ModelAndView validateUser(@ModelAttribute User login,  HttpSession httpSession) 
{
	ModelAndView modelAndView = new ModelAndView();
	User user = userService.authenticateUser(login);
	if(user.getEmail()!=null)
	{
		modelAndView.setViewName("userDashboard");
	}
	else
		modelAndView.setViewName("index");
	
	return modelAndView;
}

@RequestMapping(value="adminLogin.html", method=RequestMethod.POST)
public ModelAndView validateAdmin(@ModelAttribute Admin login,  HttpSession httpSession) 
{
	ModelAndView modelAndView = new ModelAndView();
	Admin admin = adminService.authenticateUser(login);
	if(admin.getEmail()!=null)
	{
		modelAndView.setViewName("adminDashboard");
	}
	else
		modelAndView.setViewName("index");
	
	return modelAndView;
}


}
