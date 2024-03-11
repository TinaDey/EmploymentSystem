package com.EmploymentSystem.demo.repo;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.EmploymentSystem.demo.model.CompModel;
import com.EmploymentSystem.demo.model.EmpModel;
import java.time.LocalDate;
import java.time.YearMonth;



@Repository
public interface compensationRepoDb extends JpaRepository<CompModel, Integer> {
List<CompModel> findBySelectedMonthYearBetween(YearMonth startDate, YearMonth endDate);
}

