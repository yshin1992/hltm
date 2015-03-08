package com.test;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.bean.Href;
import com.dao.InitSqlMap;
import com.ibatis.sqlmap.client.SqlMapClient;

public class Test_SqlMap {
	
	public static void main(String[] args) throws IOException{
		SqlMapClient sqlMap=InitSqlMap.getSqlMap();
		try {
			if(sqlMap==null){
				System.out.println("error");
				return;
			}
			
			List resList=sqlMap.queryForList("index.queryXone", null);
			for(int i=0;i<resList.size();i++){
				System.out.println(resList.get(i));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
