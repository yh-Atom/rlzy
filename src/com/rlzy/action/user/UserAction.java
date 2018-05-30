package com.rlzy.action.user;

import com.opensymphony.xwork2.ActionSupport;
import com.rlzy.service.impl.user.UserServiceImpl;

public class UserAction extends ActionSupport{
	private UserServiceImpl userService;

	
	public String implements_navbar() {
		return "navbar_";
	}

	public String intoIndex() {
		return "intoIndex";
	}

	public String intoMain() {
		return "intoMain";
	}

	public String skipToUser() {
		return "skipToUser";
	}

	// --------------------------以上为页面引入
	
	

}
