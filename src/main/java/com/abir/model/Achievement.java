package com.abir.model;

public class Achievement {
	private String name;
	private String description;
	
	
	public Achievement() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Achievement(String name, String description) {
		super();
		this.name = name;
		this.description = description;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
