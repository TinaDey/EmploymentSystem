package com.EmploymentSystem.demo.model;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.MapsId;
import jakarta.persistence.OneToOne;

@Component
@Entity
public class CompModel {
	
//	@Id
//	@Column(name = "id")
//    private int id;
//	
//	 @OneToOne
//	 @MapsId
//    @JoinColumn(name = "id")
//    private EmpModel employee;
	@Id
	@Column(name = "id")
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String type;
	//private List<Integer> amount;
	private List<Integer> amount = new ArrayList<>();
	private String description;
	 private YearMonth selectedMonthYear;
	public CompModel(int id, String type, List<Integer>  amount, String description, YearMonth selectedMonthYear) {
		super();
		this.id = id;
		this.type = type;
		this.amount=amount;
		//this.amount.add(amount.get(0));
		this.description = description;
		this.selectedMonthYear = selectedMonthYear;
	}
	public YearMonth getSelectedMonthYear() {
		return selectedMonthYear;
	}
	public void setSelectedMonthYear(YearMonth selectedMonthYear) {
		this.selectedMonthYear = selectedMonthYear;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "CompModel [id=" + id + ", type=" + type + ", amount=" + amount + ", description=" + description
				+ ", selectedMonthYear=" + selectedMonthYear + "]";
	}
	public List<Integer> getAmount() {
		return amount;
	}
	public void setAmount(List<Integer> amount) {
		this.amount=amount;
		//this.amount.add(amount.get(0));
	}
	 public void addAmount(Integer amount) {
	        this.amount.add(amount);
	    }
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public CompModel() {
		super();
		// TODO Auto-generated constructor stub
	}
}
