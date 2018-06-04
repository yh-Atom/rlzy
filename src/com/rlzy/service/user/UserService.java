package com.rlzy.service.user;

import com.rlzy.domain.DO.rlzy_user;

public interface UserService {
	
	boolean judgeUserByUsername(String username);
	
	rlzy_user getUserByUsername(String username);
	
	rlzy_user getUserbyId(String user_id);
}
