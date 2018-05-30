package com.rlzy.service.impl.user;

import com.rlzy.dao.user.UserDao;
import com.rlzy.service.user.*;;

public class UserServiceImpl implements UserService{
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
