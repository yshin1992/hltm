package com.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.dao.InitSqlMap;
import com.ibatis.sqlmap.client.SqlMapClient;

public class ZoneTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		try{
			SqlMapClient sqlMap=InitSqlMap.getSqlMap();
			List resList=sqlMap.queryForList("index.queryXone", null);
			for(int i=0;i<resList.size();i++){
				getJspContext().getOut().write("<option value='"+resList.get(i)+"'>"+resList.get(i)+"</option>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

}
