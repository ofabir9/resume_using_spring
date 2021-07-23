package com.abir.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.abir.dto.EmployeeDTO;
import com.abir.model.Employee;
import com.abir.service.EmployeeService;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

	
	private EmployeeService employeeService;
	
	@Autowired
	public EmployeeController(EmployeeService employeeService)
	{
		this.employeeService = employeeService;
	}
	
	@ModelAttribute("employeeDTO")
	public EmployeeDTO getEmployeeDTO()
	{
		return new EmployeeDTO();
	}
	
	@GetMapping()
	public String allEmployees(Model model)
	{
		model.addAttribute("employees", employeeService.getAllEmployees());
		return "employeesTable";
	}
	
	@GetMapping("/show/{id}")
	public String showResume(@PathVariable("id") int id, Model model)
	{
		if(employeeService.getEmployeeById(id)!=null)
			model.addAttribute(employeeService.getEmployeeById(id));
		else
		{
			//TO DO
		}
		return "showResume";
	}
	
	@GetMapping("/add")
	public String showCreateResumeForm(Model model)
	{
		return "createResume";
	}
	
	@PostMapping("/add")
	public String addEmployee(@Valid @ModelAttribute("employeeDTO") EmployeeDTO employeeDTO,BindingResult result, Model model)
	{
		if(result.hasErrors()) {
			
			return "error";
		}
		employeeService.insertEmployee(employeeService.employeeDTOToEmployee(employeeDTO));
		return "redirect:/employees";
	}
	
	@PostMapping("/edit")
	public String showEditEmployeeForm(@RequestParam("id") int id,Model model)
	{
		System.out.println("Edit form");
		if(employeeService.getEmployeeById(id)!=null)
		{
			model.addAttribute("employeeDTO",employeeService.employeeToEmployeeDTO( employeeService.getEmployeeById(id)));
			model.addAttribute("employee", employeeService.getEmployeeById(id));
		}
		else
		{
			//TO DO
		}
		return "editResume";
	}
	
	@PostMapping("/edit/save")
	public String saveEditEmployee(@Valid @ModelAttribute("employeeDTO") EmployeeDTO employeeDTO, @RequestParam("oldEmployeeId") int oldEmployeeId,BindingResult result,Model model) {
			
		if(result.hasErrors()) {
			
			return "error";
		}

		Employee oldEmployee = employeeService.getEmployeeById(oldEmployeeId);
		Employee newEmployee = employeeService.employeeDTOToEmployee(employeeDTO);
		
		employeeService.updateEmployee(oldEmployee, newEmployee);
		
		return "redirect:/employees";
	}
	@PostMapping("/delete")
	public String deleteEmployee(@RequestParam("id") int id, Model model)
	{
		employeeService.deleteEmployee(employeeService.getEmployeeById(id));
		return "redirect:/employees";
	}
	
}
