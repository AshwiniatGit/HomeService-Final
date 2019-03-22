package com.cts.homeservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.homeservice.bean.Admin;
import com.cts.homeservice.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired 
	private AdminDAO adminDAO;
	
	@Override
	public Admin authenticateUser(Admin admin) {
		// TODO Auto-generated method stub
		return adminDAO.authenticateAdmin(admin);
	}

	@Override
	public String addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return adminDAO.addAdmin(admin);
	}

	@Override
	public boolean checkAdmin(String email) {
		// TODO Auto-generated method stub
		return adminDAO.checkAdmin(email);
	}

	@Override
	public int getLastId() {
		// TODO Auto-generated method stub
		return adminDAO.getLastId();
	}

}
