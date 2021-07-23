package com.abir.dao;

import java.util.List;

import com.abir.model.Employee;


public interface IEmployeeDAO {
	
	public List<Employee> getAllEmployees();
	public Employee getEmployeeById(int id);
	public void insertEmployee(Employee employee);
	public void deleteEmployee(Employee employee);
	public void updateEmployee(Employee oldEmployee,Employee newEmployee);
	
}
