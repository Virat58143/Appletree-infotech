package com.addmission;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="addmission_class")
public class addmission_class {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String stu2;
	private String dob2;
	private long mob2;
	private String add2;
	private String ema2;
	private String fnm2;
	private long fmo2;
	private String foc2;
	private String sqf2;
	private String csy2;
	private String cif2;
	private long tfe2;
	private String unm2;
	private String pas2;
	
	
	
	public addmission_class() {
		//super();
		// TODO Auto-generated constructor stub
	}
	public String getStu2() {
		return stu2;
	}
	public void setStu2(String stu2) {
		this.stu2 = stu2;
	}
	public String getDob2() {
		return dob2;
	}
	public void setDob2(String dob2) {
		this.dob2 = dob2;
	}
	public long getMob2() {
		return mob2;
	}
	public void setMob2(long mob2) {
		this.mob2 = mob2;
	}
	public String getAdd2() {
		return add2;
	}
	public void setAdd2(String add2) {
		this.add2 = add2;
	}
	public String getEma2() {
		return ema2;
	}
	public void setEma2(String ema2) {
		this.ema2 = ema2;
	}
	public String getFnm2() {
		return fnm2;
	}
	public void setFnm2(String fnm2) {
		this.fnm2 = fnm2;
	}
	public long getFmo2() {
		return fmo2;
	}
	public void setFmo2(long fmo2) {
		this.fmo2 = fmo2;
	}
	public String getFoc2() {
		return foc2;
	}
	public void setFoc2(String foc2) {
		this.foc2 = foc2;
	}
	public String getSqf2() {
		return sqf2;
	}
	public void setSqf2(String sqf2) {
		this.sqf2 = sqf2;
	}
	public String getCsy2() {
		return csy2;
	}
	public void setCsy2(String csy2) {
		this.csy2 = csy2;
	}
	public String getCif2() {
		return cif2;
	}
	public void setCif2(String cif2) {
		this.cif2 = cif2;
	}
	public long getTfe2() {
		return tfe2;
	}
	public void setTfe2(long tfe2) {
		this.tfe2 = tfe2;
	}
	public String getUnm2() {
		return unm2;
	}
	public void setUnm2(String unm2) {
		this.unm2 = unm2;
	}
	public String getPas2() {
		return pas2;
	}
	public void setPas2(String pas2) {
		this.pas2 = pas2;
	}
	public addmission_class(String stu2, String dob2, long mob2, String add2, String ema2, String fnm2, long fmo2,
			String foc2, String sqf2, String csy2, String cif2, long tfe2, String unm2, String pas2) {
		super();
		this.stu2 = stu2;
		this.dob2 = dob2;
		this.mob2 = mob2;
		this.add2 = add2;
		this.ema2 = ema2;
		this.fnm2 = fnm2;
		this.fmo2 = fmo2;
		this.foc2 = foc2;
		this.sqf2 = sqf2;
		this.csy2 = csy2;
		this.cif2 = cif2;
		this.tfe2 = tfe2;
		this.unm2 = unm2;
		this.pas2 = pas2;
	}
	@Override
	public String toString() {
		return "addmission_class [stu2=" + stu2 + ", dob2=" + dob2 + ", mob2=" + mob2 + ", add2=" + add2 + ", ema2="
				+ ema2 + ", fnm2=" + fnm2 + ", fmo2=" + fmo2 + ", foc2=" + foc2 + ", sqf2=" + sqf2 + ", csy2=" + csy2
				+ ", cif2=" + cif2 + ", tfe2=" + tfe2 + ", unm2=" + unm2 + ", pas2=" + pas2 + "]";
	}
	
	

}
