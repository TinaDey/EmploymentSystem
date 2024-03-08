package com.EmploymentSystem.demo.model;

import java.util.UUID;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.stereotype.Component;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Component
@Entity
public class EmpModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	@Column(nullable = false,unique = true)
	private String fName;
	private String mName;
	private String lName;
	private String postion;
	//Date currentDate = new Date();
	
	
	public String getfName() {
		return fName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getlName() {
		return lName;
	}
	@Override
	public String toString() {
		return "EmpModel [id=" + id + ", fName=" + fName + ", mName=" + mName + ", lName=" + lName + ", postion="
				+ postion + "]";
	}
	public EmpModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getPostion() {
		return postion;
	}
	public void setPostion(String postion) {
		this.postion = postion;
	}
	public EmpModel(int id,String fName, String mName, String lName, String postion) {
		super();
		this.id=id;
		this.fName = fName;
		this.mName = mName;
		this.lName = lName;
		this.postion = postion;
	}
	

}
