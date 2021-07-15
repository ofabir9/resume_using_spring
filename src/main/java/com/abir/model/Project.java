package com.abir.model;

import java.util.List;

public class Project {
	private String name;
	private String description;
	List<String> languages;
	List<String> tools;
	
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Project(String name, String description, List<String> languages, List<String> tools) {
		super();
		this.name = name;
		this.description = description;
		this.languages = languages;
		this.tools = tools;
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
	public List<String> getLanguages() {
		return languages;
	}
	public void setLanguages(List<String> languages) {
		this.languages = languages;
	}
	public List<String> getTools() {
		return tools;
	}
	public void setTools(List<String> tools) {
		this.tools = tools;
	}
	
	
}
