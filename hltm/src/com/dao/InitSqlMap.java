package com.dao;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class InitSqlMap {
	//这里使用单例模式构建sqlMap
	private static SqlMapClient sqlMap;
	
	private InitSqlMap(){
	}
	
	public static SqlMapClient getSqlMap() throws IOException{
		String resource = "SqlMapConfig.xml";
		Reader reader=Resources.getResourceAsReader(resource);
		if(sqlMap==null)
			sqlMap=SqlMapClientBuilder.buildSqlMapClient(reader);
		return sqlMap;
	}
}
