package com.EmploymentSystem.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.EmploymentSystem.demo.model.EmpModel;
import com.EmploymentSystem.demo.service.empService;
//import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmpController {
	@Autowired
	private empService service;
	
@GetMapping({"/","/home"})
public String home() {
	return "home";
}
@GetMapping("/addEmployee")
public String addEmployeePage() {
	return "AddEmployee";
}

@RequestMapping("addEmployee")
public void addEmployee(@ModelAttribute("emp") EmpModel emp ) {
	
	service.addEmp(emp); 
}

}
