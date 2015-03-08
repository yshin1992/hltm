package com.dao;

import com.bean.User;

public class UserDao {
	public  static boolean validate(User user){
		try {
			if(InitSqlMap.getSqlMap().queryForObject("index.validateUser", user)!=null)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return false;
	}
}
