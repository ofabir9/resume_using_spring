<%@page import="java.util.List"%>
<%@page import="com.abir.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" ref="/resources/static/css/style.css" />
	<script src="resources/static/js/script.js"></script>
<title>Create Resume</title>
</head>
<body>
	<div class="bg-green-400 mx-auto max-w-screen-lg h-screen">
		<div class="flex flex-col container max-w-screen-lg mx-auto bg-green-400 rounded-xl ">
			<div class="flex mt-20 mx-auto" >
				<h1>
					Create New Resume here 
				</h1>
				
			</div>
			<div class="flex flex-col mt-5 ml-5" >
			 
			 
			 <% List<String> errors = (List<String>)request.getAttribute("errors"); %>
			 <%
			 	if(errors != null)
			 	for(String error : errors)
			 	{
			 %>
			 	<div> <%=error %> </div>
			 <%} %>
			 
			 
				<form:form action="${pageContext.servletContext.contextPath}${requestScope['javax.servlet.forward.servlet_path']}" method="post" modelAttribute="employeeDTO">
				  
				  <div class="flex flex-row mt-5 ml-5 " >
				  	<div class="flex flex-col w-1/6">
				  	
					  <form:label path="firstName" for="fname" style="display:block;">First name:</form:label>
					  <form:input path="firstName" type="text" class="pl-1" id="fname" name="fname" required="required"/>
					  
					  <form:label path="lastName" for="lname" style="display:block;">Last name:</form:label>
					  <form:input path="lastName" type="text" class="pl-1" id="lname" name="lname" required="required"/>
					  
					  <form:label path="mobile" for="mobile" style="display:block;">Mobile:</form:label>
					  <form:input path="mobile" type="text" class="pl-1" id="mobile" name="mobile" required="required"/>
					  
					  <form:label path="github" for="github" style="display:block;">Github:</form:label>
					  <form:input path="github" type="text" class="pl-1" id="github" name="github" required="required"/>
					  
					  <form:label path="linkedin" for="linkedin" style="display:block;">Linkedin:</form:label>
					  <form:input path="linkedin" type="text" class="pl-1" id="linkedin" name="linkedin" required="required"/>
					  
					  <form:label path="email" for="email" style="display:block;">Email:</form:label>
					  <form:input path="email" type="text" class="pl-1" id="email" name="email" required="required"/>
					  
					  <form:label path="address" for="address" style="display:block;">Home Address:</form:label>
					  <form:input path="address" type="text" class="pl-1" id="address" name="address" required="required"/>
				  	</div>
				  	<div class="flex flex-col w-5/6 ml-5">
				  		<div class="flex flex-col rounded border-2 border-green-200 pb-1">
				  		
				  			<div class="flex">
				  			Education
				  			</div>
				  			
				  			<div class="input_education_wrap flex flex-col justify-start">
							    <!--  
							    <div class="flex flex-col mt-2 mb-2 ml-2">
									<input class="mt-1 pl-1" placeholder="ChangeCourse" type="text" name="educationCourse[]" required/>
									<input class="mt-1 pl-1" placeholder="Subject" type="text" name="educationSubject[]" required/>
									<input class="mt-1 pl-1" placeholder="Institution" type="text" name="educationInstitution[]" required/>
									<input class="mt-1 pl-1" placeholder="Passing year" type="number" min="1900" max="2199" step="1" name="educationPassingYear[]" required/>
									<input class="mt-1 pl-1" placeholder="Achieved grade" type="number" name="educationAchievedGrade[]" required/>
									<input class="mt-1 pl-1" placeholder="Total grade" type="number" name="myeducationTotalGrade[]" required/>
								</div>
								-->
								
							</div>
							<div class="flex flex-row justify-end">
								<button type="button" class="add_education_button flex btn btn-secondary w-1/5">Add Education</button>
				  			</div>
				  		</div>
				  		
				  		
				  		<div class="flex flex-col rounded border-2 border-green-200 pb-1">
					  		<div class="flex">
					  			Skill
					  		</div>
					  		<div class="input_skill_wrap flex flex-col justify-start">
					  			<!--
							    <div class="flex flex-col mt-2 mb-2 ml-2">
									<input class="mt-1 pl-1" placeholder="Skill Type (e.g. Programing languages, Web technologies, Architectures ) Use comma(,) to seperate multiple skills" type="text" name="skillType[]" required/>
									<input class="mt-1 pl-1" placeholder="Skills (e.g. C, C++, C#, Java, HTML )" type="text" name="skillNames[]" required/>
							    </div>
							    -->
								
							</div>
							<div class="flex flex-row justify-end">
								<button type="button" class="add_skill_button flex btn btn-secondary w-1/5">Add Skill</button>
				  			</div>
				  		</div>
				  		<div class="flex flex-col rounded border-2 border-green-200 pb-1">
					  		<div class="flex">
					  			Project
					  		</div>
					  		<div class="input_project_wrap flex flex-col justify-start">
					  			<!--  
							    <div class="flex flex-col mt-2 mb-2 ml-2">
									<input class="mt-1 pl-1" placeholder="Project Name" type="text" name="projectName[]" required/>
									<input class="mt-1 pl-1" placeholder="Short Description" type="text" name="projectDescription[]" required/>
									<input class="mt-1 pl-1" placeholder="Languages used: (e.g. C++, Java) Use comma(,) to seperate multiple languages" type="text" name="projectLanguages[]" required/>
									<input class="mt-1 pl-1" placeholder="Tools used: (e.g. Visual Studio, Intellij) Use comma(,) to seperate multiple tools" type="text" name="projectTools[]" required/>
							    </div>
								-->
							</div>
							<div class="flex flex-row justify-end">
								<button type="button" class="add_project_button flex btn btn-secondary w-1/5">Add Project</button>
				  			</div>
				  		</div>
				  		<div class="flex flex-col rounded border-2 border-green-200 pb-1">
					  		<div class="flex">
					  			Achievements/Extra curricular activities/Certificates
					  		</div>
					  		<div class="input_achievement_wrap flex flex-col justify-start">
					  			<!--  
							    <div class="flex flex-col mt-2 mb-2 ml-2">
									<input class="mt-1 pl-1" placeholder="Achievement/Competition name/Miscellenious" type="text" name="achievementName[]" required/>
									<input class="mt-1 pl-1" placeholder="Rank/Position/etc" type="text" name="achievementDescription[]" required/>
							    </div>
								-->
							</div>
							<div class="flex flex-row justify-end">
								<button type="button" class="add_achievement_button flex btn btn-secondary w-1/5">Add Achievement</button>
				  			</div>
				  		</div>
				  		<div class="flex flex-row justify-end mt-5">
				  			
				  			<!-- Button trigger modal -->
							<button type="button" class="flex btn btn-primary flex-wrap " data-bs-toggle="modal" data-bs-target="#staticBackdrop">
							  Save Resume
							</button>
				  			<!-- Modal -->
							<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="staticBackdropLabel">Are you Sure you want to save?</h5>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							        You are about to save the resume.
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
							        <button type="submit" class="btn btn-success">Save</button>
							      </div>
							    </div>
							  </div>
							</div>
				  		</div>
				  		
				  	</div>
				  	
				  
				  	
				  </div>
				  
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>