package com.cts.homeservice.service;

import com.cts.homeservice.bean.Admin;

public interface AdminService {
	public Admin authenticateUser(Admin admin);
	public String addAdmin(Admin admin);
	public boolean checkAdmin(String email);
	public int getLastId();
}
