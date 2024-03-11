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
List<CompModel> findByIdAndType(int id, String type);
List<CompModel> findById(int id);
//List<CompModel>findByidAndType(int id,String type);
CompModel findByidAndType(int id,String type);
}

