package com.geeksoft.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
public class Employee implements Serializable {

	@Id
	@GeneratedValue
	private long employeeId;
	private String employeeName;
	private String employeeAddress;
	private String email;
	private String phone;
	private float salary;

}
