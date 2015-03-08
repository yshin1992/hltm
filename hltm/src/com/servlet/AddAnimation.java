package com.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Animation;
import com.dao.AnimationDao;

@WebServlet(name="addanimation",urlPatterns="/manager/animation_add")
public class AddAnimation extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name=request.getParameter("ani_name");
		String time_input=request.getParameter("ani_time");
		Date date=null;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		if(time_input!=null){
			try {
				date=sdf.parse(time_input);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		String zone=request.getParameter("ani_zone");
		String details=request.getParameter("ani_details");
		String roles=request.getParameter("ani_roles");
		String cast=request.getParameter("ani_cast");
		String staff=request.getParameter("ani_staff");
		if(AnimationDao.create(new Animation(name,date,zone,details,roles,cast,staff))){
			request.setAttribute("result", "success");
		}
		request.getRequestDispatcher("../WEB-INF/content/add_baseinfo.jsp").forward(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
