package com.admin_main;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AdminMainClass")
public class AdminMainClass {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "aum")
	private String aum;
	@Column(name = "pass")
	private String pass;
	
	
	
	public AdminMainClass() {
		//super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAum() {
		return aum;
	}
	public void setAum(String aum) {
		this.aum = aum;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public AdminMainClass( String aum, String pass) {
		super();
		
		this.aum = aum;
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "AdminMainClass [ aum=" + aum + ", pass=" + pass + "]";
	}
	
	
	

}
