package com.xhg.test;

import java.util.List;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.xhg.inter.IUserOperation;
import com.xhg.model.Article;
import com.xhg.model.User;

public class Test {

	private static Reader reader;
	private static SqlSessionFactory factory;

	static {
		try {
			reader = Resources.getResourceAsReader("Configuration.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void main(String[] args) throws IOException {
		getUserArticles(1);
	}

	public static void getUserById(int id) {
		/*
		 * InputStream is = new FileInputStream(new
		 * File("src/main/resources/Configuration.xml")); SqlSessionFactory
		 * factory = new SqlSessionFactoryBuilder().build(is); SqlSession
		 * session = factory.openSession();
		 */
		SqlSession session = factory.openSession();
		try {
			// 接口实现
			IUserOperation operation = session.getMapper(IUserOperation.class);
			User user = operation.selectUserById(1);

			// User user =
			// session.selectOne("com.xhg.model.UserMapper.selectUserById", 1);
			System.out.println(user.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	public static void getUserList(String userName) {
		SqlSession session = factory.openSession();
		try {
			IUserOperation operation = session.getMapper(IUserOperation.class);
			List<User> list = operation.selectUser(userName);
			for (User user : list)
				System.out.println(user.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			session.close();
		}

	}

	public static void addUser() {
		User user = new User();
		user.setUserAddress("人民广场");
		user.setUserName("飞鸟");
		user.setUserAge(80);
		SqlSession session = factory.openSession();
		try {
			IUserOperation userOperation = session.getMapper(IUserOperation.class);
			userOperation.addUser(user);
			session.commit();
			System.out.println("当前增加的用户 id为:" + user.getId());
		} finally {
			session.close();
		}
	}

	public static void updateUser() {
		// 先得到用户,然后修改，提交。
		SqlSession session = factory.openSession();
		try {
			IUserOperation userOperation = session.getMapper(IUserOperation.class);
			User user = userOperation.selectUserById(3);
			user.setUserAddress("原来是魔都的浦东创新园区");
			userOperation.updateUser(user);
			session.commit();

		} finally {
			session.close();
		}
	}

	public static void deleteUser(int id) {
		SqlSession session = factory.openSession();
		try {
			IUserOperation userOperation = session.getMapper(IUserOperation.class);
			userOperation.deleteUser(id);
			session.commit();
		} finally {
			session.close();
		}
	}

	public static void getUserArticles(int userid) {
		SqlSession session = factory.openSession();
		try {
			IUserOperation userOperation = session.getMapper(IUserOperation.class);
			List<Article> list = userOperation.getUserArticle2(userid);
			for (Article article : list) {
				System.out.println(article.getTitle() + ":" + article.getContent() + ":作者是:"
						+ article.getUser().getUserName() + ":地址:" + article.getUser().getUserAddress());
			}
		} finally {
			session.close();
		}
	}
}
