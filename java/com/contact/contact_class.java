package com.contact;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class contact_class {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String nam2;
	private String ema2;
	private String mob3;
	private String adc2;
	
	
	
	public contact_class() {
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
	public String getMob3() {
		return mob3;
	}
	public void setMob3(String mob3) {
		this.mob3 = mob3;
	}
	public String getAdc2() {
		return adc2;
	}
	public void setAdc2(String adc2) {
		this.adc2 = adc2;
	}
	public contact_class(String nam2, String ema2, String mob3, String adc2) {
		super();
		this.nam2 = nam2;
		this.ema2 = ema2;
		this.mob3 = mob3;
		this.adc2 = adc2;
	}
	@Override
	public String toString() {
		return "contact_class [nam2=" + nam2 + ", ema2=" + ema2 + ", mob3=" + mob3 + ", adc2=" + adc2 + "]";
	}
	
	

}
