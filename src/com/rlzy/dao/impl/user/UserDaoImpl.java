package com.rlzy.dao.impl.user;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.rlzy.dao.user.UserDao;

public class UserDaoImpl implements UserDao{
	
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	
	
}
