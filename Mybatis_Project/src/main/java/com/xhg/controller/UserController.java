package com.xhg.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xhg.inter.IUserOperation;
import com.xhg.model.Article;
import com.xhg.util.PageInfo;

@Controller
@RequestMapping("article")
public class UserController {

	@Autowired
	IUserOperation userMapper;

	@RequestMapping("list")
	public ModelAndView listAll(HttpServletRequest request, HttpServletResponse response) {
		List<Article> articles = userMapper.getUserArticle(1);
		ModelAndView mav = new ModelAndView("list");
		mav.addObject("articles", articles);
		return mav;
	}
	
	@RequestMapping("/pagelist")
	public ModelAndView postList(HttpServletRequest request, HttpServletResponse response) {
		int currentPage = (request.getParameter("page") == null) ? 1 : Integer.parseInt(request.getParameter("page"));
		int pageSize = 3;
		if(currentPage <= 1)
			currentPage = 1;
		int currentResult = (currentPage - 1) * pageSize;
		
		System.out.println(request.getRequestURI());
		System.out.println(request.getQueryString());
		
		PageInfo page = new PageInfo();
		page.setShowCount(pageSize);
		page.setCurrentResult(currentResult);
		
		List<Article> articles = userMapper.selectArticleListPage(page, 1);
		
		page.setTotalResult(articles.size());
		
		int totalCount = page.getTotalResult();
		System.out.println(totalCount);
		
		int lastPage = 0;
		if (totalCount % pageSize == 0){
			lastPage = totalCount / pageSize;
		}
		else{
			lastPage =1+ totalCount / pageSize;
		}
		
		if(currentPage >= lastPage)
			currentPage = lastPage;
		
		String pageStr = "";
		
		pageStr = String.format("<a href=\"%s\">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"%s\">下一页</a>"
				, request.getRequestURI()+"?page="+(currentPage-1),request.getRequestURI()+"?page="+(currentPage+1));
		
		List<Article> newList = new ArrayList<Article>(3);
		for (int i = currentResult; i < articles.size(); i++) {
			newList.add(articles.get(i));
		}
		
		ModelAndView mav = new ModelAndView("list");
		mav.addObject("articles",newList);
		mav.addObject("pageStr",pageStr);
		return mav;
		
		
	}
}
