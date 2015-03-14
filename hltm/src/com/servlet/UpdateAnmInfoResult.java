package com.servlet;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

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

/*
 * 注意这个表单提交的属性为enctype="multipart/form-data"
 * 所以在servlet3.x规范时，必须添加@MultipartConfig
 */
@WebServlet(name="updateres",urlPatterns="/manager/updateRes")
@MultipartConfig
public class UpdateAnmInfoResult extends HttpServlet {

	private static final long serialVersionUID = -7658658996397517250L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id=request.getParameter("ani_aiid");
		String name=request.getParameter("ani_name");
		String time_input=request.getParameter("ani_time");
		Date date=null;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		if(time_input!=null){
			try {
				date=sdf.parse(time_input);
			} catch (ParseException e) {
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
		
		String path=null;
		if(part!=null){
			File file = new File(getServletContext().getRealPath("/")+"/uploads");
			if(!file.exists()){
				file.mkdirs();
			}
			
			//上传文件的路径
			path="uploads/"+MyUtils.getUUID()+".jpg";
			
			part.write(getServletContext().getRealPath("/")+"/"+path);
		}
		int aiid=Integer.parseInt(id);
		
		Animation animation=new Animation(name,date,zone,path,details,roles,cast,staff);
		animation.setAiid(aiid);
		if(AnimationDao.updateAnimation(animation)){
			Animation anima=AnimationDao.query(aiid);
			request.setAttribute("animation", anima);
			request.getRequestDispatcher("/WEB-INF/content/show_animationinfo.jsp").forward(request, response);
		}else{
			//创建失败时，返回新增界面
			request.getRequestDispatcher("/WEB-INF/content/edit_baseinfo.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
