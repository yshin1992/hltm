package com.dao;

import java.util.List;

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
	
	public static Animation query(int aiid){
		try{
			SqlMapClient sqlMap=InitSqlMap.getSqlMap();
			Animation ani=(Animation)sqlMap.queryForObject("index.query_anm", aiid);
			System.out.println(ani.getName());
			return ani;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public static List<Animation> getAnimationList(){
		try{
			SqlMapClient sqlMap=InitSqlMap.getSqlMap();
			List<Animation> list=sqlMap.queryForList("index.query_anmList", null);
			return list;
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
	}
	
	public static boolean updateAnimation(Animation animation){
		try{
			SqlMapClient sqlMap=InitSqlMap.getSqlMap();
			if(sqlMap.update("index.update_anm", animation)>0)
				return true;
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}
	
	public static boolean deleteAnimation(List aiids){
		try{
			SqlMapClient sqlMap=InitSqlMap.getSqlMap();
			if(sqlMap.delete("index.delete_anm", aiids)>0)
				return true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
}
