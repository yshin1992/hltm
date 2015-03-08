package com.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class AlphaIndexLeadingTag extends SimpleTagSupport {

	private String address;
	
	private String style;
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub
		for(char i='A';i<='Z';i++){
//			getJspContext().getOut().write("<a href='"+address+"?index="+i+"'>");
			getJspContext().getOut().write("<button type='button' class='"+style+"'>"+i+"</button>");
//			getJspContext().getOut().write("</a>");
		}
	}

}
