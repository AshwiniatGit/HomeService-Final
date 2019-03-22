package com.cts.homeservice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.homeservice.bean.Admin;
import com.cts.homeservice.bean.User;
import com.cts.homeservice.service.AdminService;
import com.cts.homeservice.service.UserService;

@Controller
public class RegistrationController {
	@Autowired
	private UserService userService;
	@Autowired
	private AdminService adminService;

@RequestMapping(value="userRegistration.html", method=RequestMethod.GET)
	public String getUserRegistration()
	{
		return "userRegistration";
	}



@RequestMapping(value="userRegistration.html", method=RequestMethod.POST)
public ModelAndView userRegistration(@ModelAttribute User user,  HttpSession httpSession,@RequestParam(value="skills")String skills ) 
{
	ModelAndView modelAndView = new ModelAndView();
	if(!userService.checkUser(user.getEmail())){
		int id = userService.getLastId();
		user.setUserId(id+"");
		user.setSkills(skills);
	if("success".equals(userService.addUser(user)))
		modelAndView.setViewName("userDashboard");
	}
	else	
	{
		modelAndView.addObject("error", "EmailId Already Exists!!");
		modelAndView.addObject("user", user);
		modelAndView.setViewName("userRegistration");
	}
	return modelAndView;
}

@RequestMapping(value="adminRegistration.html", method=RequestMethod.GET)
public String getAdminRegistration()
{
	return "userRegistration";
}



@RequestMapping(value="adminRegistration.html", method=RequestMethod.POST)
public ModelAndView adminRegistration(@ModelAttribute Admin admin,  HttpSession httpSession) 
{
	ModelAndView modelAndView = new ModelAndView();
	if(!adminService.checkAdmin(admin.getEmail())){
		int id = userService.getLastId();
		admin.setAdminId(id+"");
	if("success".equals(adminService.addAdmin(admin)))
		modelAndView.setViewName("adminDashboard");
	}
	else	
	{
		modelAndView.addObject("error", "EmailId Already Exists!!");
		modelAndView.addObject("newAdmin", admin);
		modelAndView.setViewName("adminRegistration");
	}
	return modelAndView;
}

}