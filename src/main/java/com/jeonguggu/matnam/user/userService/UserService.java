package com.jeonguggu.matnam.user.userService;

import java.util.Date;

public class UserService {
	
	//matnamMember
	private String mnMmId;
	private String sessSeq;
	private String sessName;
	
	// matnamServices
	private String mnsvSeq;
	private String mnsvTitle;
	private String mnsvDoneNy;
	private String mnsvDesc;
	private String mnMmSeq;
	private Date mnsvReceiptDate;
	private String mnsvTypeCd;
	
	
	//matnamServicesReply
	private String mnsrSeq;
	private String mnsrContent;
	private String mnsrDate;
	private String mnsrDesc;
	
	public String getMnMmId() {
		return mnMmId;
	}
	public void setMnMmId(String mnMmId) {
		this.mnMmId = mnMmId;
	}
	public String getSessSeq() {
		return sessSeq;
	}
	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}
	public String getSessName() {
		return sessName;
	}
	public void setSessName(String sessName) {
		this.sessName = sessName;
	}
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
	public String getMnsvDoneNy() {
		return mnsvDoneNy;
	}
	public void setMnsvDoneNy(String mnsvDoneNy) {
		this.mnsvDoneNy = mnsvDoneNy;
	}
	public String getMnsvDesc() {
		return mnsvDesc;
	}
	public void setMnsvDesc(String mnsvDesc) {
		this.mnsvDesc = mnsvDesc;
	}
	public String getMnMmSeq() {
		return mnMmSeq;
	}
	public void setMnMmSeq(String mnMmSeq) {
		this.mnMmSeq = mnMmSeq;
	}
	public Date getMnsvReceiptDate() {
		return mnsvReceiptDate;
	}
	public void setMnsvReceiptDate(Date mnsvReceiptDate) {
		this.mnsvReceiptDate = mnsvReceiptDate;
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
	public String getMnsrDate() {
		return mnsrDate;
	}
	public void setMnsrDate(String mnsrDate) {
		this.mnsrDate = mnsrDate;
	}
	public String getMnsrDesc() {
		return mnsrDesc;
	}
	public void setMnsrDesc(String mnsrDesc) {
		this.mnsrDesc = mnsrDesc;
	}
	public String getMnsvTypeCd() {
		return mnsvTypeCd;
	}
	public void setMnsvTypeCd(String mnsvTypeCd) {
		this.mnsvTypeCd = mnsvTypeCd;
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
