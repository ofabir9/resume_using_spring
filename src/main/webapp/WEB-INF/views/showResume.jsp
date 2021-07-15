<%@page import="java.util.List"%>
<%@page import="com.abir.model.Employee"%>
<%@page import="com.abir.model.Education"%>
<%@page import="com.abir.model.Skill"%>
<%@page import="com.abir.model.Project"%>
<%@page import="com.abir.model.Achievement"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<title>Employee Resume</title>
</head>
<body>
 <%
 	Employee employee = (Employee)request.getAttribute("employee");
 	String name = employee.getFullName();
 	List<Education> educations = employee.getEducations();
 	List<Skill> skills = employee.getSkills();
 	List<Achievement> achievements = employee.getAchievements();
 	List<Project> projects = employee.getProjects();
 	int cnt = 0;
 %>
 
 <div class="flex flex-col container max-w-screen-lg mx-auto bg-green-500 rounded-xl">
      
      <!-- this section contains profile picture and contact informations -->
      <div class="flex flex-col md:flex-row pr-8 pl-8">

        <!-- profile picture-->
        <div class="flex flex-grow md:mx-16 my-6">
          <img class="w-60 rounded-full border-8 border-green-100 mx-auto mb-8" src="https://i.stack.imgur.com/YQu5k.png" alt="">
        </div>

        <!-- contact information-->
        <div class="flex flex-col flex-grow mx-4 md:my-auto">
          <div class="text-5xl font-semibold text-center md:text-right mb-5">
            <%=name %>
          </div>
          <div class="text-1xl font-semibold text-center md:text-right flex flex-row justify-center md:justify-end text-gray-800">
            <span class="iconify" data-icon="entypo:old-mobile" data-inline="false"></span> <%=employee.getMobile() %></div>
          <div class="text-1xl font-semibold text-center md:text-right flex flex-row justify-center md:justify-end text-gray-800">
            <span class="iconify" data-icon="akar-icons:github-fill" data-inline="false"></span><a href="https://github.com/ofabir9" target="_blank"> <%=employee.getGithub() %> </a>
          </div>
          <div class="text-1xl font-semibold text-center md:text-right flex flex-row justify-center md:justify-end text-gray-800">
            <span class="iconify" data-icon="akar-icons:linkedin-fill" data-inline="false"></span> <a href="https://www.linkedin.com/in/ofabir9/" target="_blank"><%=employee.getLinkedin() %></a>
          </div>
          <div class="text-1xl font-semibold text-center md:text-right flex flex-row justify-center md:justify-end text-gray-800">
            <span class="iconify" data-icon="clarity:email-line" data-inline="false"></span><a href="mailto:omarfaruqueabir@gmail.com" ><%=employee.getEmail() %></a>
          </div>
          <div class="location text-1xl font-semibold text-center md:text-right flex flex-row justify-center md:justify-end text-gray-800">
            <span class="iconify" data-icon="fluent:location-16-filled" data-inline="false"></span><%=employee.getAddress() %>
          </div>
          </div>

      </div>

      <!-- this section contains rest of the cv -->
      <div class="flex flex-col md:flex-row mb-3 flex-grow ">

        <!-- this section contains education and skills -->
        <div class="flex flex-col bg-green-500 flex-grow md:w-2/5 pr-9 pl-5">
        
          <!-- this section contains education -->
          <div class="flex flex-col">

            <hr class="m-1">
            <div class="flex flex-row text-3xl font-semibold text-gray-800">
              <span class="iconify" data-icon="zondicons:education" data-inline="false"></span>Education
            </div>
            <hr class="m-1">

			<div class="accordion bg-green-500" id="accordionEducation">
			<%cnt=0;
			for(Education education : educations){ %>
				<div class="accordion-item">
					<h2 class="accordion-header" id = "headingEducation<%=cnt%>">
						<button class="accordion-button collapsed text-1xl font-medium text-gray-800" style="background-color:rgb(16, 185, 129);" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEducation<%=cnt%>" aria-expanded="false" aria-controls="collapseEducation<%=cnt%>">
							<%=education.getCourse()%>
						</button>
					</h2>
					<div id="collapseEducation<%=cnt%>" class="accordion-collapse collapse" aria-labelledby="headingEducation<%=cnt%>">
				      <div class="accordion-body">
				        <p class="text-1xl text-gray-800"><b><%=education.getInstitution()+",<br> "+education.getSubject() %></b></p>
		                  <div class="flex">
		                    <span class="iconify" data-icon="ic:round-date-range" data-inline="false"></span><%=education.getPassingYear() %>
		                  </div>
		                  <div class="flex">
		                    <span class="iconify" data-icon="ic:round-grade" data-inline="false"></span><%=education.getAchievedGrade()%> out of <%=education.getTotalGrade()%></p>
		                  </div>
				      </div>
			    </div>
				</div>
				
			<%cnt++; } %>
			</div>
			
          </div>
          <br>
          <br>
          <!-- this section contains skills -->
          <div class="flex flex-col">
            <hr class="m-1">
            <div class="flex flex-row text-3xl font-semibold text-gray-800">

              <span class="iconify" data-icon="zondicons:education" data-inline="false"></span>Skills

            </div>
            <hr class="m-1">
            
            
			<div class="accordion" id="accordionExampleSkills">
			<%cnt=0;
			for(Skill skill : skills){ %>
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="headingSkills<%=cnt%>">
			      <button class="accordion-button collapsed text-1xl font-medium text-gray-800" style="background-color:rgb(16, 185, 129);" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSkills<%=cnt%>" aria-expanded="false" aria-controls="collapseSkills<%=cnt%>">
			        <%=skill.getSkillType() %>
			      </button>
			    </h2>
			    <div id="collapseSkills<%=cnt%>" class="accordion-collapse collapse" aria-labelledby="headingSkills<%=cnt%>">
			      <div class="accordion-body">
			      <%for(String skillname: skill.getSkillNames()){%>
				      <p class="text-1xl text-gray-800"><b><%=skillname %></b></p>  
			      <%}%>
			      </div>
			    </div>
			  </div>
			<%cnt++; } %>
			</div>

          </div>
        </div>

        <!-- this section contains projects and achievements -->
        <div class="flex flex-col bg-green-400 flex-grow rounded-xl md:w-3/5 pr-9 pl-5">
          <!-- this section contains projects -->
          <div class="flex flex-col">

            <hr class="m-1">
            <div class="flex flex-row text-3xl font-semibold text-gray-800">
              <span class="iconify" data-icon="zondicons:education" data-inline="false"></span>Project Works
            </div>
            <hr class="m-1">

            
			<div class="accordion" id="accordionExampleProject">
  				<%cnt=0;
				for(Project project : projects){ %>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="headingProject<%=cnt%>">
				      <button class="accordion-button collapsed text-1xl font-medium text-gray-800" style="background-color:rgb(16, 185, 129);" type="button" data-bs-toggle="collapse" data-bs-target="#collapseProject<%=cnt%>" aria-expanded="false" aria-controls="collapseProject<%=cnt%>">
				        <%=project.getName() %>
				      </button>
				    </h2>
				    <div id="collapseProject<%=cnt%>" class="accordion-collapse collapse" aria-labelledby="headingProject<%=cnt%>">
				      <div class="accordion-body">
				        <p class="text-1xl text-gray-800"><b><%=project.getDescription() %></b><br>Languages: <%for(String language:project.getLanguages()){ %> <%=language %> <%} %> <br>Tools: <%for(String tool:project.getTools()){ %> <%=tool %> <%} %></p>
				      </div>
				    </div>
				  </div>
				<%cnt++; } %>
			</div>

          </div>
          <br>
          <br>
          <!-- this section contains achievements -->
          <div class="flex flex-col">

            <hr class="m-1">
            <div class="flex flex-row text-3xl font-semibold text-gray-800">
              <span class="iconify" data-icon="zondicons:education" data-inline="false"></span>Achievements
            </div>
            <hr class="m-1">

            <div class="flex flex-col ml-10">
              <div class="flex flex-col ">

                

                <div class="details flex flex-col mb-2" ">
                <%for(Achievement achievement: achievements){ %>
                	<div class="flex ">
                    <p class="flex w-4/5 text-1xl text-gray-800"><%=achievement.getName() %></p>
                    <div class="flex w-1/5 text-1xl text-gray-800"><%=achievement.getDescription() %></div>
                  </div>
                <%} %>
                  
                  
                </div>

              </div>
             

            </div>


          </div>
        </div>
      </div>

    </div>
 
</body>
</html>