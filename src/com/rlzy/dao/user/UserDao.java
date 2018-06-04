package com.rlzy.dao.user;

import com.rlzy.domain.DO.rlzy_user;

public interface UserDao {
	
	boolean judgeUserbyUsername(String user_name);
	
	rlzy_user getUserByusername(String user_name);
	
	rlzy_user getUserById(String user_id);
}
