package com.dao;

import com.bean.Animation;
import com.ibatis.sqlmap.client.SqlMapClient;

public class AnimationDao {
	
	public static boolean create(Animation animation){
		try{
			SqlMapClient sqlMap=InitSqlMap.getSqlMap();
			sqlMap.insert("index.create_anm", animation);
			return true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
	public static Animation query(){
		try{
			SqlMapClient sqlMap=InitSqlMap.getSqlMap();
			Animation ani=(Animation)sqlMap.queryForObject("index.query_anm", null);
			System.out.println(ani.getName());
			return ani;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}
