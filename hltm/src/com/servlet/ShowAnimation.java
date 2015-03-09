package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Animation;
import com.dao.AnimationDao;
@WebServlet(name="show_ani",urlPatterns="/manager/animation_show")
public class ShowAnimation extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int aiid=Integer.parseInt(request.getParameter("index"));
		Animation anima=AnimationDao.query(aiid);
		request.setAttribute("animation", anima);
		request.getRequestDispatcher("/WEB-INF/content/show_animationinfo.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
