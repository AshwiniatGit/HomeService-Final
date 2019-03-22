package com.cts.homeservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.homeservice.bean.User;
import com.cts.homeservice.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public User authenticateUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.authenticateUser(user);
	}

	@Override
	public String addUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.addUser(user);
	}

	@Override
	public int getLastId() {
		// TODO Auto-generated method stub
		return userDAO.getLastId();
	}

	@Override
	public boolean checkUser(String email) {
		// TODO Auto-generated method stub
		return userDAO.checkUser(email);
	}

}
