package com.tag;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.bean.Href;
import com.dao.InitSqlMap;
import com.ibatis.sqlmap.client.SqlMapClient;

public class IndexLeadingTag extends SimpleTagSupport{

	// 标签的属性
	private String style;//样式的类名
	
	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	@Override
	public void doTag() throws JspException, IOException {
		SqlMapClient sqlMap=InitSqlMap.getSqlMap();
		try {
			/*
			 * 将导航栏输出来
			 */
			List resList=sqlMap.queryForList("index.leading", null);
			this.getJspContext().getOut().write("<ul class='"+style+"'>");
			for(Iterator it=resList.iterator();it.hasNext();){
				Href href=(Href)it.next();
				this.getJspContext().getOut().write("<li><a href="+href.get_address()+">"+href.get_title()+"</a></li>");
			}
			this.getJspContext().getOut().write("<li>&nbsp;&nbsp;</li>");
			this.getJspContext().getOut().write("</ul>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		this.getJspContext().getOut().write("IndexLeadingTag execute..........");
	}
	
}
