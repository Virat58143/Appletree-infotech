package com.installment;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="installment_class")
public class installment_class {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private long mob2;
	private String nam2;
	private String cou2;
	private long tfe2;
	private long mob22;
	private String sin2;
	private String tni2;
	private String snoi2;
	private long eif2;
	private long asf2;
	private String dfd2;
	private long rfe2;
	
	public installment_class() {
		//super();
		// TODO Auto-generated constructor stub
	}

	public long getMob2() {
		return mob2;
	}

	public void setMob2(long mob2) {
		this.mob2 = mob2;
	}

	public String getNam2() {
		return nam2;
	}

	public void setNam2(String nam2) {
		this.nam2 = nam2;
	}

	public String getCou2() {
		return cou2;
	}

	public void setCou2(String cou2) {
		this.cou2 = cou2;
	}

	public long getTfe2() {
		return tfe2;
	}

	public void setTfe2(long tfe2) {
		this.tfe2 = tfe2;
	}

	public long getMob22() {
		return mob22;
	}

	public void setMob22(long mob22) {
		this.mob22 = mob22;
	}

	public String getSin2() {
		return sin2;
	}

	public void setSin2(String sin2) {
		this.sin2 = sin2;
	}

	public String getTni2() {
		return tni2;
	}

	public void setTni2(String tni2) {
		this.tni2 = tni2;
	}

	public String getSnoi2() {
		return snoi2;
	}

	public void setSnoi2(String snoi2) {
		this.snoi2 = snoi2;
	}

	public long getEif2() {
		return eif2;
	}

	public void setEif2(long eif2) {
		this.eif2 = eif2;
	}

	public long getAsf2() {
		return asf2;
	}

	public void setAsf2(long asf2) {
		this.asf2 = asf2;
	}

	public String getDfd2() {
		return dfd2;
	}

	public void setDfd2(String dfd2) {
		this.dfd2 = dfd2;
	}

	public long getRfe2() {
		return rfe2;
	}

	public void setRfe2(long rfe2) {
		this.rfe2 = rfe2;
	}

	@Override
	public String toString() {
		return "installment_class [mob2=" + mob2 + ", nam2=" + nam2 + ", cou2=" + cou2 + ", tfe2=" + tfe2 + ", mob22="
				+ mob22 + ", sin2=" + sin2 + ", tni2=" + tni2 + ", snoi2=" + snoi2 + ", eif2=" + eif2 + ", asf2=" + asf2
				+ ", dfd2=" + dfd2 + ", rfe2=" + rfe2 + "]";
	}

	public installment_class(long mob2, String nam2, String cou2, long tfe2, long mob22, String sin2, String tni2,
			String snoi2, long eif2, long asf2, String dfd2, long rfe2) {
		super();
		this.mob2 = mob2;
		this.nam2 = nam2;
		this.cou2 = cou2;
		this.tfe2 = tfe2;
		this.mob22 = mob22;
		this.sin2 = sin2;
		this.tni2 = tni2;
		this.snoi2 = snoi2;
		this.eif2 = eif2;
		this.asf2 = asf2;
		this.dfd2 = dfd2;
		this.rfe2 = rfe2;
	}
	
	
	
	
	
	
	
	
	
	
}