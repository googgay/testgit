package com.xhg.util;

import java.util.UUID;

public class EmailCode {
	public static String createEmailCode(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
	
	/**
	 * 解析用户输入的邮箱验证吗,获取用户id部分
	 * @param code
	 * @return
	 */
	public static String getUid(String code){
		if(code == null){
			return null;
		}
		int index = code.lastIndexOf("-");
		if(index==-1){
			return null;
		}
		return code.substring(index+1);
	}
	/**
	 * 解析用户输入的邮箱验证吗,获取uuid部分
	 * @param code
	 * @return
	 */
	public static String getUUID(String code){
		if(code == null){
			return null;
		}
		int index = code.lastIndexOf("-");
		if(index==-1){
			return null;
		}
		return code.substring(0,index);
	}
	
}

