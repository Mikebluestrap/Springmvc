package com.geeksoft.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.geeksoft.entities.Employee;

@Component
public class EmployeeValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Employee.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty.employee.email");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "employeeName", "NotEmpty.employee.name");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "employeeAddress", "NotEmpty.employee.address");

		Employee employee = (Employee) target;

		if (employee.getSalary() <= 0) {
			errors.rejectValue("salary", "NotEmpty.employee.salary", "Employee Salary cannot be empty");
		}

	}

}
