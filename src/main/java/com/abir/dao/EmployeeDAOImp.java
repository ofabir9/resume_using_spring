package com.abir.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.abir.model.Employee;
import com.abir.service.AchievementService;
import com.abir.service.EducationService;
import com.abir.service.ProjectService;
import com.abir.service.SkillService;

@Repository
public class EmployeeDAOImp implements IEmployeeDAO{

	private static EmployeeDAOImp instance;
	private List<Employee> employees;
	private static int available_id;
	
	private EmployeeDAOImp()
	{
		this.employees = new ArrayList<Employee>(Arrays.asList(
				new Employee(1,"Omar Faruque","Abir","01759389123","github.com/ofabir9","linkedin.com/in/ofabir9","omarfaruqueabir@gmail.com","13/2 Paikpara D-type Quarter, Mirpur-1, Dhaka-1216",new EducationService().getEducations(),new SkillService().getSkills(),new ProjectService().getProjects(),new AchievementService().getAchievements()),
				new Employee(2,"Afikur Rahman","Khan","01759389124","github.com/afikur","linkedin.com/in/afikur","afikur@gmail.com","23/7 Taltola, Mirpur-2, Dhaka-1216",new EducationService().getEducations(),new SkillService().getSkills(),new ProjectService().getProjects(),new AchievementService().getAchievements()),
				new Employee(3,"Sazzad","Hossain","01759389125","github.com/szdhossain","linkedin.com/in/szdhossain","szdhossain@gmail.com","56/5 Rupnagar, Mirpur-6, Dhaka-1216",new EducationService().getEducations(),new SkillService().getSkills(),new ProjectService().getProjects(),new AchievementService().getAchievements())					
				));
		available_id = this.employees.size()+1;
	}
	
	public static EmployeeDAOImp getEmployeeDao()
	{
		if(instance==null)
        {
            synchronized (EmployeeDAOImp.class)
            {
                if(instance==null)
                {
                    instance=new EmployeeDAOImp();
                }
            }
        }
        return instance;
	}
	
	@Override
	public List<Employee> getAllEmployees() {
		// TODO Auto-generated method stub
		return this.employees;
	}

	@Override
	public Employee getEmployeeById(int id) {
		// TODO Auto-generated method stub
		for(Employee employee : employees)
		{
			if(employee.getId() == id)
			{
				return employee;
			}
		}
		return null;
	}

	@Override
	public void insertEmployee(Employee employee) {
		// TODO Auto-generated method stub
		this.employees.add(employee);
		EmployeeDAOImp.available_id = employees.get(employees.size()-1).getId()+1;
		
	}

	@Override
	public int getAvailableId() {
		// TODO Auto-generated method stub
		return EmployeeDAOImp.available_id;
	}
	
	public void deleteEmployee(Employee employee) {
		// TODO Auto-generated method stub
		employees.remove(employee);
	}

	@Override
	public void updateEmployee(Employee oldEmployee, Employee newEmployee) {
		// TODO Auto-generated method stub
		System.out.println("Updating");
		deleteEmployeeById(oldEmployee.getId());
		
		newEmployee.setId(oldEmployee.getId());
		this.employees.add(newEmployee);
	}

	@Override
	public void deleteEmployeeById(int id) {
		// TODO Auto-generated method stub
		for(Employee employee: employees){
			if(employee.getId() == id)
			{
				employees.remove(employee);
				break;
			}
		}
	}

	

	

}
