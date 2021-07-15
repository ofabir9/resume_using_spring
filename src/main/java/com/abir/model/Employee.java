package com.abir.model;

import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.URL;



public class Employee {
	
	private int id;
	
	@NotEmpty(message = "First Name cannot be Empty")
	@Size(min=2,max=30,message = "First name must be between 2 to 30 characters")
	private String firstName;
	
	@NotEmpty(message = "Last Name cannot be Empty")
	@Size(min=2,max=30,message = "Last name must be between 2 to 30 characters")
	private String lastName;
	
	@NotNull(message = "Mobile number cannot be null")
	@NotEmpty(message = "Mobile number cannot be Empty")
	@Pattern(regexp="(^$|[0-9]{8,13})",message="Provice valid mobile number")
	private String mobile;
	
	@NotNull(message = "Github link cannot be null")
	@URL(message = "Enter valid url")
	private String github;
	
	@NotNull(message = "Linkdin link cannot be null")
	@URL(message = "Enter valid url")
	private String linkedin;
	@Email(message = "Provice valid email address")
	private String email;
	
	@NotEmpty(message = "Address cannot be Empty")
	@Size(min=2,max=60,message = "Address must be between 2 to 60 characters")
	private String address;
	
	private List<Education> educations;
	private List<Skill> skills;
	private List<Project> projects;
	private List<Achievement> achievements;
	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(int id, String firstName, String lastName, List<Education> educations, List<Skill> skills,
			List<Project> projects, List<Achievement> achievements) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.educations = educations;
		this.skills = skills;
		this.projects = projects;
		this.achievements = achievements;
	}
	public Employee(int id, String firstName, String lastName, String mobile, String github, String linkedin,
			String email, String address, List<Education> educations, List<Skill> skills, List<Project> projects,
			List<Achievement> achievements) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.mobile = mobile;
		this.github = github;
		this.linkedin = linkedin;
		this.email = email;
		this.address = address;
		this.educations = educations;
		this.skills = skills;
		this.projects = projects;
		this.achievements = achievements;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public List<Education> getEducations() {
		return educations;
	}
	public void setEducations(List<Education> educations) {
		this.educations = educations;
	}
	public List<Skill> getSkills() {
		return skills;
	}
	public void setSkills(List<Skill> skills) {
		this.skills = skills;
	}
	public List<Project> getProjects() {
		return projects;
	}
	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}
	public List<Achievement> getAchievements() {
		return achievements;
	}
	public void setAchievements(List<Achievement> achievements) {
		this.achievements = achievements;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getGithub() {
		return github;
	}
	public void setGithub(String github) {
		this.github = github;
	}
	public String getLinkedin() {
		return linkedin;
	}
	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFullName() {
		return firstName+" "+lastName;
	}
	

	
}
