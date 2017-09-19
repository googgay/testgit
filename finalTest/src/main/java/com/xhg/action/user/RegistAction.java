package com.xhg.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.xhg.entity.User;
import com.xhg.service.UserService;
import com.xhg.util.EmailCode;
import com.xhg.util.Md5Code;

public class RegistAction {
	
	private HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	private HttpSession session = request.getSession();

	private User user;
	private String checkCode ;
	private UserService userService;

	public String execute() throws Exception {
		String pwd = Md5Code.createMd5Code(user.getPassword());
		user.setPassword(pwd);
		user.setUser_integral(10);
		user.setEmail_verify(true);

		String emailCode = EmailCode.createEmailCode();
		user.setEmail_verify_code(emailCode);
		user.setLast_login_time(System.currentTimeMillis());
		user.setLast_login_ip(request.getRemoteAddr());
		System.out.println(user.getEmail_verify_code());
		System.out.println("regist1");
		userService.save(user);
		System.out.println("regist2");
		session.setAttribute("s_user", user);
		System.out.println("regist3");
		// 发送邮箱验证码,测试时直接显示在页面上方便调试

		// String emailCode = verifyCode+"-"+user.getId();
		// EmailUtil.sendEmail(emailCode, user.getEmail());
		
		System.out.println("!------------regist--------------!");

		return "verify";
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
