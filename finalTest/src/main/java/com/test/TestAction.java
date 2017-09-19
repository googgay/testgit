package com.test;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport{
	
	public String execute() throws Exception{
		System.out.println("TestAction set successfully!");
		return "test";
	}

}
