package com.servlet;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.Animation;
import com.dao.AnimationDao;
import com.utils.MyUtils;

@WebServlet(name="addanimation",urlPatterns="/manager/animation_add")
@MultipartConfig
public class AddAnimation extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name=request.getParameter("ani_name");
		if(name!=null && !"".equals(name.trim())){
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
		
		
		//获取上传的文件
		Part part=request.getPart("file");
		
		File file = new File(getServletContext().getRealPath("/")+"/uploads");
		if(!file.exists()){
			file.mkdirs();
		}
		
		//上传文件的路径
		String path="uploads/"+MyUtils.getUUID()+".jpg";
		
		part.write(getServletContext().getRealPath("/")+"/"+path);
		
		Animation animation=new Animation(name,date,zone,path,details,roles,cast,staff);
		if(AnimationDao.create(animation)){
			request.setAttribute("animation", animation);
			request.getRequestDispatcher("/WEB-INF/content/show_animationinfo.jsp").forward(request, response);
		}else{
			//创建失败时，返回新增界面
			request.getRequestDispatcher("/WEB-INF/content/edit_baseinfo.jsp").forward(request, response);
		}
	}else{
			request.getRequestDispatcher("/WEB-INF/content/edit_baseinfo.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
