package com.servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Animation;
import com.dao.AnimationDao;

@WebServlet(name="delAnimation",urlPatterns="/manager/animation_delete")
public class DeleteAnimationInfo extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -190736746715950528L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] ids=request.getParameterValues("ids");
		if(ids==null){
			List<Animation> resList=AnimationDao.getAnimationList();
			request.setAttribute("anmList", resList);
			request.getRequestDispatcher("/WEB-INF/content/deleteinfo.jsp").forward(request, response);
		}else{
			List list=Arrays.asList(ids);
			if(AnimationDao.deleteAnimation(list)){
				List<Animation> resList=AnimationDao.getAnimationList();
				request.setAttribute("anmList", resList);
				request.getRequestDispatcher("/WEB-INF/content/deleteinfo.jsp").forward(request, response);
			}else{
				/*
				 * 这里应该定义一个错误跳转的页面
				 */
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);

	}

}
