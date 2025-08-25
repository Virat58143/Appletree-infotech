package com.feedback;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class feedback_class {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String nam2;
	private String ema2;
	private String rat2;
	private String adc1;
	
	
	
	public feedback_class() {
		//super();
		// TODO Auto-generated constructor stub
	}
	public String getNam2() {
		return nam2;
	}
	public void setNam2(String nam2) {
		this.nam2 = nam2;
	}
	public String getEma2() {
		return ema2;
	}
	public void setEma2(String ema2) {
		this.ema2 = ema2;
	}
	public String getRat2() {
		return rat2;
	}
	public void setRat2(String rat2) {
		this.rat2 = rat2;
	}
	public String getAdc1() {
		return adc1;
	}
	public void setAdc1(String adc1) {
		this.adc1 = adc1;
	}
	public feedback_class(String nam2, String ema2, String rat2, String adc1) {
		super();
		this.nam2 = nam2;
		this.ema2 = ema2;
		this.rat2 = rat2;
		this.adc1 = adc1;
	}
	@Override
	public String toString() {
		return "feedback_class [nam2=" + nam2 + ", ema2=" + ema2 + ", rat2=" + rat2 + ", adc1=" + adc1 + "]";
	}
	
	
	
	

}
