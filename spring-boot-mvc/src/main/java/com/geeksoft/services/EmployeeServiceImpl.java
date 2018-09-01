package com.geeksoft.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geeksoft.entities.Employee;
import com.geeksoft.repositories.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	EmployeeRepository empRepository;

	@Override
	public Employee getEmployeeById(long employeeId) {		
		return empRepository.findById(employeeId).get();
	}

	@Override
	public Employee saveEmployee(Employee employee) {		
		return empRepository.save(employee);
	}

}
