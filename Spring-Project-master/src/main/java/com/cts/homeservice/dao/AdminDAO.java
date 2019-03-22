package com.cts.homeservice.dao;

import com.cts.homeservice.bean.Admin;

public interface AdminDAO {

	public Admin authenticateAdmin(Admin admin);
	public String addAdmin(Admin admin);
	public boolean checkAdmin(String email);
	public int getLastId();
}
