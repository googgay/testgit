package com.xhg.action.user;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import javax.imageio.ImageIO;

import com.xhg.action.BaseAction;
import com.xhg.util.ImageUtil;

public class CheckCodeAction extends BaseAction{
	
	private InputStream imageStream;

	public String execute() {
		Map<String, BufferedImage> map = ImageUtil.createImage();
		// 获取验证码图片上的字符
		String key = map.keySet().iterator().next();
		session.setAttribute("checkCode", key);
		// 获取BufferedImage对象
		BufferedImage image = map.get(key);
		// 将BufferedImage赋值给imageStream
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		try {
			ImageIO.write(image, "jpg", bos);
			byte[] imageBt = bos.toByteArray();
			imageStream = new ByteArrayInputStream(imageBt);
			System.out.println(imageStream.toString());
			return "success";
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("error");
			return "fail";
		}
	}

	public InputStream getImageStream() {
		return imageStream;
	}

	public void setImageStream(InputStream imageStream) {
		this.imageStream = imageStream;
	}

}
