package com.EmploymentSystem.demo.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.EmploymentSystem.demo.model.EmpModel;
import com.EmploymentSystem.demo.repo.employeeRepoDb;

@Service
public class empService {
	@Autowired
	private employeeRepoDb repo;
	public void addEmp(EmpModel emp) {
		repo.save(emp);
	}
}
