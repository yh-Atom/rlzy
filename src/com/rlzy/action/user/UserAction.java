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
		PrintWriter pw=response.getWriter();
		if(!userService.judgeUserByUsername(username)){
			pw.write("");//不存在
		}else{
			if(password.equals(userService.getUserByUsername(username).getPassword())){
				pw.write("");//密码正确
			}else 
				pw.write("");//密码错误
		}
		
		pw.flush();
		pw.close();
	}
	
	
	private String username;
	private String user_id;
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserServiceImpl getUserService() {
		return userService;
	}

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
	

}
