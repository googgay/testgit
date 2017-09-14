package com.xhg.inter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xhg.model.Article;
import com.xhg.model.User;
import com.xhg.util.PageInfo;

public interface IUserOperation {
	
	public User selectUserById(int id);
	
	public List<User> selectUser(String userName);
	
	public void addUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(int id);
	
	public List<Article> getUserArticle(int id);
	
	public List<Article> getUserArticle2(int id);
	
	public List<Article> selectArticleListPage(@Param("page") PageInfo page, @Param("userid") int userid);
}
