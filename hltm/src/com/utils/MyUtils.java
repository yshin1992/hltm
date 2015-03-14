package com.utils;

public class MyUtils {
	public synchronized static String getUUID(){
		return java.util.UUID.randomUUID().toString();
	}
}
