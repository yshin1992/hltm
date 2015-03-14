package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.User;
import com.dao.UserDao;

@WebServlet(name="login",urlPatterns="/login")
public class Login extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		if(session.getAttribute("user")!=null){
			request.getRequestDispatcher("/WEB-INF/content/manage_index.jsp").forward(request, response);
			return ;
		}
		String name=request.getParameter("name");
		String pass=request.getParameter("pass");
		if(name!=null && pass!=null){
			name=name.replace(" ", "");//将空格替换掉
			pass=pass.replace(" ", "");
			User user=new User(name,pass);
			if(UserDao.validate(user)){
				request.getSession().setAttribute("user", user);
				request.getRequestDispatcher("/WEB-INF/content/manage_index.jsp").forward(request, response);
			}
		}else{
			request.getRequestDispatcher("/WEB-INF/content/login.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
