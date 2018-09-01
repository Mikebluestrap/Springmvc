package com.geeksoft.services;

import com.geeksoft.entities.Employee;

public interface EmployeeService {

	/**
	 * Returns the Employee object for given Employee Id.
	 * 
	 * @param employeeId
	 * @return
	 */
	Employee getEmployeeById(long employeeId);

	/**
	 * Returns the Employee object after saving the given Employee object.
	 * 
	 * @param employee
	 * @return
	 */
	Employee saveEmployee(Employee employee);
}
