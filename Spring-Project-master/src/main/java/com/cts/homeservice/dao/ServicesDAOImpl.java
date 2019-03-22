package com.cts.homeservice.dao;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.cts.homeservice.bean.Services;

@Repository
@Transactional
public class ServicesDAOImpl implements ServicesDAO {

	@Override
	public String addService(Services service) {
		// TODO Auto-generated method stub
		return null;
	}

}
