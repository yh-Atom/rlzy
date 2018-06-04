package com.rlzy.action.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

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
	//登陆
	public void login() throws IOException{
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("text/html;charset=utf-8");
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "GET,POST");
		PrintWriter pw=response.getWriter();
		if(!userService.judgeUserByUsername(user_username)){
			pw.write("userNoExist");//不存在
		}else{
			String userpassword=userService.getUserByUsername(user_username).getUser_password();
			if(userpassword.equals(user_password)){
				pw.write("loginSuccess");//密码正确
			}else 
				pw.write("passwordError");//密码错误
		}
		
		pw.flush();
		pw.close();
	}
	
	
	private String user_username;
	private String user_id;
	private String user_password;


	public UserServiceImpl getUserService() {
		return userService;
	}

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}

	public String getUser_username() {
		return user_username;
	}

	public void setUser_username(String user_username) {
		this.user_username = user_username;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
}
