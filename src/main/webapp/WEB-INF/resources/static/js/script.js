/**
 * 
 */
$(document).ready(function() {
    const max_education_fields      = 10; //maximum input boxes allowed
    const max_skill_fields      = 15;
	const max_project_fields      = 20;
	const max_achievement_fields      = 15;
	
	var wrapper_education         = $(".input_education_wrap"); //Fields wrapper
    var add_button_education      = $(".add_education_button"); //Add button ID
    var education_cnt = 1; //initlal text box count
	
	var wrapper_skill         = $(".input_skill_wrap"); //Fields wrapper
    var add_button_skill      = $(".add_skill_button"); //Add button ID
    var skill_cnt = 1; //initlal text box count
	
	var wrapper_project         = $(".input_project_wrap"); //Fields wrapper
    var add_button_project      = $(".add_project_button"); //Add button ID
    var project_cnt = 1; //initlal text box count
	
	var wrapper_achievement         = $(".input_achievement_wrap"); //Fields wrapper
    var add_button_achievement      = $(".add_achievement_button"); //Add button ID
    var achievement_cnt = 1; //initlal text box count
	
	
   $(add_button_education).click(function(e){ //on add input button click
        e.preventDefault();
        if(education_cnt < max_education_fields){ //max input box allowed
	
		     //text box increment
            $(wrapper_education ).append(	'<div class="flex flex-col mt-2 mb-2 ml-2">'+
									'<input class="mt-1 pl-1" placeholder="Course" type="text" name="educationCourses" required="required"/>'+
									'<input class="mt-1 pl-1" placeholder="Subject" type="text" name="educationSubjects" required="required"/>'+
									'<input class="mt-1 pl-1" placeholder="Institution" type="text" name="educationInstitutions" required="required"/>'+
									'<input class="mt-1 pl-1" placeholder="Passing year" type="number" min="1900" max="2199" step="1" name="educationPassingYears" required="required"/>'+
									'<input class="mt-1 pl-1" placeholder="Achieved grade" type="number" name="educationAchievedGrades" required="required"/>'+
									'<input class="mt-1 pl-1" placeholder="Total grade" type="number" name="educationTotalGrades" required="required"/>'+
									'<a href="#" class="remove_education">Remove</a>'+
								'</div>'); //add input box
            education_cnt++; 
	  }
    });
   
    $(wrapper_education).on("click",".remove_education", function(e){ //user click on remove text
       
		e.preventDefault(); 
		$(this).parent('div').remove(); 
		education_cnt--;
    })
	
	
	
	$(add_button_skill).click(function(e){ //on add input button click
        e.preventDefault();
        if(skill_cnt < max_skill_fields){ //max input box allowed
	
		     //text box increment
            $(wrapper_skill ).append(	'<div class="flex flex-col mt-2 mb-2 ml-2">'+
									'<input class="mt-1 pl-1" placeholder="Skill Type (e.g. Programing languages, Web technologies, Architectures )" type="text" name="skillTypes" required="required"/>'+
									'<input class="mt-1 pl-1" placeholder="Skills (e.g. C, C++, C#, Java, HTML ) Use comma(,) to seperate multiple skills" type="text" name="skillNamess" required="required"/>'+
									'<a href="#" class="remove_skill">Remove</a>'+
								'</div>'); //add input box
            skill_cnt++; 
	  }
    });
   
    $(wrapper_skill).on("click",".remove_skill", function(e){ //user click on remove text
       
		e.preventDefault(); 
		$(this).parent('div').remove(); 
		skill_cnt--;
    })


	$(add_button_project).click(function(e){ //on add input button click
        e.preventDefault();
        if(project_cnt < max_project_fields){ //max input box allowed
	
		     //text box increment
            $(wrapper_project ).append(	'<div class="flex flex-col mt-2 mb-2 ml-2">'+
									'<input class="mt-1 pl-1" placeholder="Project Name" type="text" name="projectNames" required/>'+
									'<input class="mt-1 pl-1" placeholder="Short Description" type="text" name="projectDescriptions" required/>'+
									'<input class="mt-1 pl-1" placeholder="Languages used: (e.g. C++, Java) Use comma(,) to seperate multiple languages" type="text" name="projectLanguagess" required="required"/>'+
									'<input class="mt-1 pl-1" placeholder="Tools used: (e.g. Visual Studio, Intellij)  Use comma(,) to seperate multiple tools" type="text" name="projectToolss" required="required"/>'+
									'<a href="#" class="remove_project">Remove</a>'+
								'</div>'); //add input box
            project_cnt++; 
	  }
    });
   
    $(wrapper_project).on("click",".remove_project", function(e){ //user click on remove text
       
		e.preventDefault(); 
		$(this).parent('div').remove(); 
		project_cnt--;
    })


	$(add_button_achievement).click(function(e){ //on add input button click
        e.preventDefault();
        if(achievement_cnt < max_achievement_fields){ //max input box allowed
	
		     //text box increment
            $(wrapper_achievement ).append(	'<div class="flex flex-col mt-2 mb-2 ml-2">'+
									'<input class="mt-1 pl-1" placeholder="Achievement/Competition name/Miscellenious" type="text" name="achievementNames" required="required"/>'+
									'<input class="mt-1 pl-1" placeholder="Rank/Position/etc" type="text" name="achievementDescriptions" required="required"/>'+
									'<a href="#" class="remove_achievement">Remove</a>'+
								'</div>'); //add input box
            achievement_cnt++; 
	  }
    });
   
    $(wrapper_achievement).on("click",".remove_achievement", function(e){ //user click on remove text
       
		e.preventDefault(); 
		$(this).parent('div').remove(); 
		achievement_cnt--;
    })
});

