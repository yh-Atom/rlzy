package com.rlzy.dao.impl.user;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.rlzy.dao.user.UserDao;
import com.rlzy.domain.DO.rlzy_user;

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

	@Override//判断用户是否存在
	public boolean judgeUserbyUsername(String user_name) {
		// TODO Auto-generated method stub
		String hql="from rlzy where user_name='"+user_name+"'";
		Query query=getSession().createQuery(hql);
		List<rlzy_user> list=query.list();
		if(list.size() > 0){
			return true;//用户存在，允许登陆
		}else{
			return false;//用户不存在，
		}
			
	}

	@Override//通过用户名的到用户
	public rlzy_user getUserByusername(String user_name) {
		// TODO Auto-generated method stub
		String hql="from rlzy where user_name = '"+user_name+"'";
		Query query=getSession().createQuery(hql);
		List<rlzy_user> list=query.list();
		return list.get(0);
	}

	@Override//
	public rlzy_user getUserById(String user_id) {
		// TODO Auto-generated method stub
		rlzy_user user=(rlzy_user) getSession().get(rlzy_user.class, user_id);
		return user;
	}

	
	
	
}
