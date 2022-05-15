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
	
//event
	private String mnevSeq;
	private String mnevTitle;
	private Date mnevStartDate;
	private Date mnevEndDate;

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
	public String getMnevSeq() {
		return mnevSeq;
	}
	public void setMnevSeq(String mnevSeq) {
		this.mnevSeq = mnevSeq;
	}
	public String getMnevTitle() {
		return mnevTitle;
	}
	public void setMnevTitle(String mnevTitle) {
		this.mnevTitle = mnevTitle;
	}
	public Date getMnevStartDate() {
		return mnevStartDate;
	}
	public void setMnevStartDate(Date mnevStartDate) {
		this.mnevStartDate = mnevStartDate;
	}
	public Date getMnevEndDate() {
		return mnevEndDate;
	}
	public void setMnevEndDate(Date mnevEndDate) {
		this.mnevEndDate = mnevEndDate;
	}
	
}
