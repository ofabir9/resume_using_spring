package com.abir.model;

import java.util.List;

public class Skill {
	private String skillType;
	List<String> skillNames;
	
	public Skill() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Skill(String skillType, List<String> skillNames) {
		super();
		this.skillType = skillType;
		this.skillNames = skillNames;
	}
	public String getSkillType() {
		return skillType;
	}
	public void setSkillType(String skillType) {
		this.skillType = skillType;
	}
	public List<String> getSkillNames() {
		return skillNames;
	}
	public void setSkillNames(List<String> skillNames) {
		this.skillNames = skillNames;
	}
	
	
}
