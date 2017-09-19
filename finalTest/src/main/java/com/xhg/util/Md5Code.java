package com.xhg.util;

import java.security.MessageDigest;
import java.util.Base64;

public class Md5Code {
	public static String createMd5Code(String code) throws Exception {
		// 获取Md5对象
		MessageDigest digest = MessageDigest.getInstance("MD5");
		//字符串转换成hashcode值
		byte[] b=digest.digest(code.getBytes());
		Base64.Encoder encoder = Base64.getEncoder();
		return encoder.encodeToString(b);
	}
	
	public static void main(String[] args) throws Exception {
		String code = Md5Code.createMd5Code("123");
		System.out.println(code);
	}
}
