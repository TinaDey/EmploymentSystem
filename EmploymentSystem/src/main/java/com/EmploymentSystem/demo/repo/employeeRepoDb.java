package com.EmploymentSystem.demo.repo;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.EmploymentSystem.demo.model.EmpModel;
import java.time.LocalDate;


@Repository
public interface employeeRepoDb extends JpaRepository<EmpModel, Integer> {
	List<EmpModel> findByfName(String fName);
	List<EmpModel> findBydob(LocalDate dob);
	List<EmpModel> findByDob(LocalDate dob);
	List<EmpModel> findBylName(String lName);
	List<EmpModel> findBymName(String mName);
	
	//List<EmpModel> findByfNameAndlName(String fName,String lName);
		//List<EmpModel> findByFNameAndLName(String fName, String lName);
//	List<EmpModel> findBylNameAndpostion(String lName,String postion);
//	List<EmpModel> findByfNameAndpostion(String fName,String postion);
//	List<EmpModel> findByfNameAndlNameAndpostion(String fName,String lName,String postion);

}
