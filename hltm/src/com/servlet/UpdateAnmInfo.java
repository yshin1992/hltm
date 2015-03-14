package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Animation;
import com.dao.AnimationDao;

@WebServlet(name="updateinfo",urlPatterns="/manager/animation_update")
public class UpdateAnmInfo extends HttpServlet {
	private static final long serialVersionUID = -9045177511642057783L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id=request.getParameter("index");
		if(id!=null&&!"".equals(id.trim())){
			Animation anima=AnimationDao.query(Integer.parseInt(id));
			request.setAttribute("animation", anima);
			request.getRequestDispatcher("/WEB-INF/content/edit_baseinfo.jsp").forward(request, response);
		}else{
			List<Animation> resList=AnimationDao.getAnimationList();
			request.setAttribute("anmList", resList);
			request.getRequestDispatcher("/WEB-INF/content/updateinfo.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
