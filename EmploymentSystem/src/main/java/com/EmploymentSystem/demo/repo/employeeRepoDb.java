package com.EmploymentSystem.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.EmploymentSystem.demo.model.EmpModel;

public interface employeeRepoDb extends JpaRepository<EmpModel, String> {

}
