package com.xhg.action.user;

import com.xhg.action.BaseAction;
import com.xhg.entity.User;
import com.xhg.service.UserService;
import com.xhg.util.Md5Code;

public class LoginAction extends BaseAction{
	private User user;
	
	private UserService userService;
	
	public String execute() throws Exception {
		User u = userService.findByEmail(user.getEmail());
		if(u==null || !u.getPassword().equals(Md5Code.createMd5Code(user.getPassword()))){
			request.setAttribute("login_err", "用户名或密码错误");
			return "login";
		}
		
		//TODO 更新last_login_time,last_login_ip字段
		u.setLast_login_ip(request.getRemoteAddr());
		u.setLast_login_time(System.currentTimeMillis());
		userService.update(u);
		
		//TODO 将user信息写入session
		session.setAttribute("s_user", u);
		
		//TODO 检查is_email_verify是否为true,如果没有验证,返回到verify_form.jsp
		
		//TODO 跳转到/main/main.jsp产品浏览界面
				return "success";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	

}
