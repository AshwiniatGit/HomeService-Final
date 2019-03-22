package com.cts.homeservice.dao;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.homeservice.bean.Admin;
import com.cts.homeservice.bean.User;


@Repository
@Transactional
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public Admin authenticateAdmin(Admin admin) {
		try{
			String email = admin.getEmail();
			String password = admin.getPassword();
			Session session = sessionFactory.getCurrentSession();
			String query = "from Admin where email = ? and password = ?";
			Query<Admin> query2 = null;
			
			query2=session.createQuery(query);
			
			query2.setParameter(0,email);  
			query2.setParameter(1,password);  
			Admin admin1= query2.getSingleResult();
			
			if(admin1!=null)
			{
				
			return admin1;
			}
			else
			{
				
				return null;
			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return null;
	}


	@Override
	public String addAdmin(Admin admin) {
		try{
		sessionFactory.getCurrentSession().save(admin);
		return "success";
		}
		catch(Exception ex){
			ex.printStackTrace();
			return "failed";
		}
		
	}


	@Override
	public boolean checkAdmin(String email) {
		try{
			Session session = sessionFactory.getCurrentSession();
			String query = "from Admin where email";
			Query<Admin> query2 = null;
			query2=session.createQuery(query);
			query2.setParameter(0,email);  
			Admin admin1= query2.getSingleResult();
			
			if(admin1!=null)
			{
				
			return true;
			}
			else
			{
				
				return false;
			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return false;
	}


	@Override
	public int getLastId() {
		 TypedQuery<Admin> query = sessionFactory.getCurrentSession().createQuery("from Admin order by adminId DESC");
		 query.setMaxResults(1);
		 int id =  Integer.parseInt(query.getSingleResult().getAdminId())+1;
	      return id;
	}
	}


