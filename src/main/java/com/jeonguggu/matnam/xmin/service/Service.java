package com.jeonguggu.matnam.xmin.service;

import java.util.Date;

public class Service {

	//matnamServices
	private String mnsvSeq;
	private String mnsvTitle;
	private Integer mnsvTypeCd;
	private Date mnsvReceiptDate;
	private Integer mnsvDoneNy;
	private String mnsvDesc;
	private Integer mnsvDelNy;
	
	//matnamServicesReply
	private String mnsrSeq;
	private String mnsrContent;
	private Date mnsrDate;
	private String mnsrDesc;
	private Integer mnsrDelNy;
	
	//=================================
	
	public String getMnsvSeq() {
		return mnsvSeq;
	}
	public void setMnsvSeq(String mnsvSeq) {
		this.mnsvSeq = mnsvSeq;
	}
	public String getMnsvTitle() {
		return mnsvTitle;
	}
	public void setMnsvTitle(String mnsvTitle) {
		this.mnsvTitle = mnsvTitle;
	}
	public Integer getMnsvTypeCd() {
		return mnsvTypeCd;
	}
	public void setMnsvTypeCd(Integer mnsvTypeCd) {
		this.mnsvTypeCd = mnsvTypeCd;
	}
	public Date getMnsvReceiptDate() {
		return mnsvReceiptDate;
	}
	public void setMnsvReceiptDate(Date mnsvReceiptDate) {
		this.mnsvReceiptDate = mnsvReceiptDate;
	}
	public Integer getMnsvDoneNy() {
		return mnsvDoneNy;
	}
	public void setMnsvDoneNy(Integer mnsvDoneNy) {
		this.mnsvDoneNy = mnsvDoneNy;
	}
	public String getMnsvDesc() {
		return mnsvDesc;
	}
	public void setMnsvDesc(String mnsvDesc) {
		this.mnsvDesc = mnsvDesc;
	}
	public Integer getMnsvDelNy() {
		return mnsvDelNy;
	}
	public void setMnsvDelNy(Integer mnsvDelNy) {
		this.mnsvDelNy = mnsvDelNy;
	}
	public String getMnsrSeq() {
		return mnsrSeq;
	}
	public void setMnsrSeq(String mnsrSeq) {
		this.mnsrSeq = mnsrSeq;
	}
	public String getMnsrContent() {
		return mnsrContent;
	}
	public void setMnsrContent(String mnsrContent) {
		this.mnsrContent = mnsrContent;
	}
	public Date getMnsrDate() {
		return mnsrDate;
	}
	public void setMnsrDate(Date mnsrDate) {
		this.mnsrDate = mnsrDate;
	}
	public String getMnsrDesc() {
		return mnsrDesc;
	}
	public void setMnsrDesc(String mnsrDesc) {
		this.mnsrDesc = mnsrDesc;
	}
	public Integer getMnsrDelNy() {
		return mnsrDelNy;
	}
	public void setMnsrDelNy(Integer mnsrDelNy) {
		this.mnsrDelNy = mnsrDelNy;
	}
	
}
