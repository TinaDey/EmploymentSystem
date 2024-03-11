package com.EmploymentSystem.demo.model;

import java.time.LocalDate;
import org.springframework.stereotype.Component;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrimaryKeyJoinColumn;

@Component
@Entity
public class EmpModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="id")
	private int id;
	@Column(nullable = false)
	private String fName;
	private String mName;
	@Column(nullable = false)
	private String lName;
	@Column(nullable = false)
	private String postion;
	
	@Column(nullable = false)
	private LocalDate dob;
	
//	 @OneToOne(mappedBy = "employee", cascade = CascadeType.ALL)
//	 @PrimaryKeyJoinColumn
//	private CompModel compensation;
//	public CompModel getCompensation() {
//		return compensation;
//	}
//
//
//	public void setCompensation(CompModel compensation) {
//		this.compensation = compensation;
//	}
	public EmpModel(int id, String fName, String mName, String lName, String postion, LocalDate dob) {
		super();
		this.id = id;
		this.fName = fName;
		this.mName = mName;
		this.lName = lName;
		this.postion = postion;
		this.dob = dob;
	}
	//Date currentDate = new Date();
	
	
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	public String getFName() {
		return fName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setFName(String fName) {
		this.fName = fName;
	}
	public String getMName() {
		return mName;
	}
	public void setMName(String mName) {
		this.mName = mName;
	}
	public String getLName() {
		return lName;
	}
	@Override
	public String toString() {
		return "EmpModel [id=" + id + ", fName=" + fName + ", mName=" + mName + ", lName=" + lName + ", postion="
				+ postion + ", dob=" + dob + "]";
	}
	public EmpModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public void setLName(String lName) {
		this.lName = lName;
	}
	public String getPostion() {
		return postion;
	}
	public void setPostion(String postion) {
		this.postion = postion;
	}
	public EmpModel(int id,String fName, String mName, String lName,LocalDate dob, String postion) {
		super();
		this.id=id;
		this.fName = fName;
		this.mName = mName;
		this.lName = lName;
		this.dob=dob;
		this.postion = postion;
	}
	

}
