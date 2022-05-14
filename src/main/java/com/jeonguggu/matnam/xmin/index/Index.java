package com.jeonguggu.matnam.xmin.index;

import java.util.Date;

public class Index {

//member
	private String mnMmSeq;
	private String mnMmId;
	private String mnMmName;
	private String mnmpNumber;
	
//Date
	private Date RegDateTime;
	
//---------------------------------
	public String getMnMmSeq() {
		return mnMmSeq;
	}
	public void setMnMmSeq(String mnMmSeq) {
		this.mnMmSeq = mnMmSeq;
	}
	public String getMnMmId() {
		return mnMmId;
	}
	public void setMnMmId(String mnMmId) {
		this.mnMmId = mnMmId;
	}
	public String getMnMmName() {
		return mnMmName;
	}
	public void setMnMmName(String mnMmName) {
		this.mnMmName = mnMmName;
	}
	public String getMnmpNumber() {
		return mnmpNumber;
	}
	public void setMnmpNumber(String mnmpNumber) {
		this.mnmpNumber = mnmpNumber;
	}
	public Date getRegDateTime() {
		return RegDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		RegDateTime = regDateTime;
	}
	
	
	
}
