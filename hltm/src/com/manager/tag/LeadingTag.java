package com.manager.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class LeadingTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		
		StringBuilder buffer=new StringBuilder();
		buffer.append("<div class='col-md-10 col-md-offset-1'>")
		.append("<table class='table-bordered' style='width:100%;margin-top:10px;'>")
		.append("<tr><td>").append("<ul class='nav nav-tabs btn-primary' style='text-align:center;font-weight:bold'>")
		.append("<li class='col-md-3'>").append("<a href='manager/animation_add'>新增</a></li>")
		.append("<li class='col-md-3'>").append("<a href='manager/anmList'>查看</a></li>")
		.append("<li class='col-md-3'>").append("<a href='manager/animation_update'>更新</a></li>")
		.append("<li class='col-md-3'>").append("<a href='manager/animation_delete'>删除</a></li>")
		.append("</ul></td></tr></table></div>");
		getJspContext().getOut().write(buffer.toString());;
		getJspContext().getOut().flush();
	}
	

}
