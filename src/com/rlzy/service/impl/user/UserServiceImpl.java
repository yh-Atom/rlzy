package com.rlzy.service.impl.user;

import com.rlzy.dao.user.UserDao;
import com.rlzy.domain.DO.rlzy_user;
import com.rlzy.service.user.*;;

public class UserServiceImpl implements UserService{
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public boolean judgeUserByUsername(String username) {
		// TODO Auto-generated method stub
		return userDao.judgeUserbyUsername(username);
	}

	@Override
	public rlzy_user getUserByUsername(String username) {
		// TODO Auto-generated method stub
		return userDao.getUserByusername(username);
	}

	@Override
	public rlzy_user getUserbyId(String user_id) {
		// TODO Auto-generated method stub
		return getUserbyId(user_id);
	}
}
