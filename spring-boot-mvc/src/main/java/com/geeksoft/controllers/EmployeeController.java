package com.geeksoft.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.support.SessionStatus;

import com.geeksoft.entities.Employee;
import com.geeksoft.services.EmployeeService;
import com.geeksoft.validators.EmployeeValidator;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	@Autowired
	EmployeeValidator validator;

	@GetMapping("/registration")
	public String registration(Model model) {
		Employee emp = new Employee();
		model.addAttribute("employee", emp);
		return "registration";
	}

	@PostMapping("/registration")
	public String submitRegistration(@ModelAttribute("employee") Employee employee, BindingResult result, SessionStatus status, Model model) {		
		validator.validate(employee, result);
		if(result.hasErrors()) {
			return "registration";
		}
		Employee empResult = employeeService.saveEmployee(employee);
		model.addAttribute("empResult", empResult);
		return "success";
	}

}
