package com.xhg.action.user;

import com.xhg.action.BaseAction;

public class LogoutAction extends BaseAction{
	public String execute(){
		session.invalidate();
		return "success";
	}
}
