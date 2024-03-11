package com.EmploymentSystem.demo.service;


import java.time.YearMonth;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.EmploymentSystem.demo.model.CompModel;
import com.EmploymentSystem.demo.model.EmpModel;
import com.EmploymentSystem.demo.repo.compensationRepoDb;
import com.EmploymentSystem.demo.repo.employeeRepoDb;

@Service
public class CompService {
	@Autowired
	private compensationRepoDb repo;
	public Boolean addComp(CompModel com) {
		try {
			if(com.getType().equals("salary") && com.getAmount().size()>1)
				return false;
			repo.save(com);
			return true;
		}
		catch(Exception e) {
			System.out.println(e);
			return false;
		}
	}
	
	public List<CompModel> getComp(YearMonth startDate,YearMonth endDate){
		return repo.findBySelectedMonthYearBetween(startDate, endDate);

	}

	 public boolean addAmountToList(int id, List<Integer> amounts,CompModel com) {
		 	CompModel compModel=repo.findById(id).orElse(null);

	        if (compModel== null) {
	            com.setAmount(amounts);
	            repo.save(com);
	        } else {
	        	compModel.addAmount(amounts.get(0));
	            //com.addAmount(amounts.get(0));
	        	repo.save(compModel);
	        }

	        return true;
	    }

	public boolean edit(int id, int amt, String desc) {
		try {
			CompModel existingCompensation=repo.findById(id).orElse(null);
			 if (existingCompensation != null) {
		            existingCompensation.setDescription(desc);
		            repo.save(existingCompensation);
		        }
			
			return true;
		}
		catch(Exception e) {
			System.out.println(e);
			return false;
		}
		
	}

}
