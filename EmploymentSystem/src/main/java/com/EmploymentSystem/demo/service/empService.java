package com.EmploymentSystem.demo.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.EmploymentSystem.demo.model.EmpModel;
import com.EmploymentSystem.demo.repo.employeeRepoDb;

@Service
public class empService {
	@Autowired
	private employeeRepoDb repo;
	public Boolean addEmp(EmpModel emp) {
		try {
			if(repo.findByfName(emp.getFName()).size()>0 && repo.findBymName(emp.getMName()).size()>0 && repo.findBylName(emp.getLName()).size()>0 && repo.findBydob(emp.getDob()).size()>0) {
				return false;
			}
			repo.save(emp);
			return true;
		}
		catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}
	
	public Boolean updateEmp(EmpModel emp) {
		try {
			EmpModel existingEmployee=repo.findById(emp.getId()).orElse(null);
			System.out.println(existingEmployee);
			 if (existingEmployee != null) {
				 System.out.println("IF");
		            // Update fields based on the editedEmployee
		            existingEmployee.setFName(emp.getFName());
		            existingEmployee.setMName(emp.getMName());
		            existingEmployee.setLName(emp.getLName());
		            existingEmployee.setPostion(emp.getPostion());
		            existingEmployee.setDob(emp.getDob());
		            
		            // Save the changes
		            repo.save(existingEmployee);
		        }
			
			return true;
		}
		catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}
	public List<EmpModel> searchEmp(EmpModel emp){
		return repo.findAll();
//		if(emp.getFName().length()>0&&emp.getLName().length()>0 &&emp.getPostion().length()>0)
//		{
//			//return repo.findByfNameAndlNameAndpostion(emp.getfName(),emp.getlName(),emp.getPostion());
//		}
//		if(emp.getFName().length()>0&&emp.getLName().length()>0)
//		{
//			//return repo.findByFNameAndLName(emp.getfName(),emp.getlName());
//		}
//		if(emp.getLName().length()>0&&emp.getPostion().length()>0)
//		{
//			//return repo.findBylNameAndpostion(emp.getlName(), emp.getPostion());
//		}
//		if(emp.getFName().length()>0&&emp.getPostion().length()>0)
//		{
//			//return repo.findByfNameAndpostion(emp.getfName(),emp.getPostion());
//		}
//		return null;
	}
}
