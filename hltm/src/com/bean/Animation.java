package com.bean;

import java.util.Date;

public class Animation {
	private String name;
	
	private Date time;
	
	private String zone;
	
	private String details;
	
	private String roles;
	
	private String cast;
	
	private String staff;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public String getCast() {
		return cast;
	}

	public void setCast(String cast) {
		this.cast = cast;
	}

	public String getStaff() {
		return staff;
	}

	public void setStaff(String staff) {
		this.staff = staff;
	}
	
	
	public Animation(){}
	
	
	public Animation(String name,Date time,String zone,String details,String roles,String staff,String cast){
		this.name=name;
		this.time=time;
		this.zone=zone;
		this.details=details;
		this.roles=roles;
		this.staff=staff;
		this.cast=cast;
	}
	
}
