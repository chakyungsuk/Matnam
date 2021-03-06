package com.jeonguggu.matnam.user.store;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Store {
	
	
	// section
	private String sessSeq;
	private String sessName;
	 
	
	
	
	
	// matnamRestaurant
	private String mnrtSeq;
	private String mnrtDelNy;
	private String mnrtDomancyNy;
	private String mnrtLikeNy;
	private String mnrtName;
	private String mnrtAddressFull;
	private String mnrtCityCd;
	private String mnrtX;
	private String mnrtY;
	private String mnrtZ;
	private String mnrtNumber;
	private String mnrtFoodCate;
	private String mnrtTimeStart;
	private String mnrtTimeEnd;
	private String mnrtBreakTimeStart;
	private String mnrtBreakTimeEnd;
	private String mnrtHoliday;
	private String mnrtAvg;
	private String mnrtText;
	private String mnmpSeq;
	
	// matnamReview
	private String mnrvSeq;
	private String mnrvDelNy;
	private String mnrvScore;
	private String mnrvText;
	private Date regDateTime;
	
	
	// matnamMember
	private String mnMmSeq;
	private String mnMmId;
	private String mnMmPassword;
	private String mnMmName;
	
	
	//file
	
	private MultipartFile file;
	private MultipartFile file2;
	private String originalFileName;
	private String uuidName;
	private String path;
	private String mnrtLogoPath;
	private String mnrtLogoUuidName;
	
	//code
	
	private String mncdName;
	private String mncdSeq;
	private String mncgSeq;
	private String mncdDelNy;
	
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
	public String getMnrtSeq() {
		return mnrtSeq;
	}
	public void setMnrtSeq(String mnrtSeq) {
		this.mnrtSeq = mnrtSeq;
	}
	public String getMnrtDelNy() {
		return mnrtDelNy;
	}
	public void setMnrtDelNy(String mnrtDelNy) {
		this.mnrtDelNy = mnrtDelNy;
	}
	public String getMnrtDomancyNy() {
		return mnrtDomancyNy;
	}
	public void setMnrtDomancyNy(String mnrtDomancyNy) {
		this.mnrtDomancyNy = mnrtDomancyNy;
	}
	public String getMnrtLikeNy() {
		return mnrtLikeNy;
	}
	public void setMnrtLikeNy(String mnrtLikeNy) {
		this.mnrtLikeNy = mnrtLikeNy;
	}
	public String getMnrtName() {
		return mnrtName;
	}
	public void setMnrtName(String mnrtName) {
		this.mnrtName = mnrtName;
	}
	public String getMnrtAddressFull() {
		return mnrtAddressFull;
	}
	public void setMnrtAddressFull(String mnrtAddressFull) {
		this.mnrtAddressFull = mnrtAddressFull;
	}
	public String getMnrtCityCd() {
		return mnrtCityCd;
	}
	public void setMnrtCityCd(String mnrtCityCd) {
		this.mnrtCityCd = mnrtCityCd;
	}
	public String getMnrtX() {
		return mnrtX;
	}
	public void setMnrtX(String mnrtX) {
		this.mnrtX = mnrtX;
	}
	public String getMnrtY() {
		return mnrtY;
	}
	public void setMnrtY(String mnrtY) {
		this.mnrtY = mnrtY;
	}
	public String getMnrtZ() {
		return mnrtZ;
	}
	public void setMnrtZ(String mnrtZ) {
		this.mnrtZ = mnrtZ;
	}
	public String getMnrtNumber() {
		return mnrtNumber;
	}
	public void setMnrtNumber(String mnrtNumber) {
		this.mnrtNumber = mnrtNumber;
	}
	public String getMnrtFoodCate() {
		return mnrtFoodCate;
	}
	public void setMnrtFoodCate(String mnrtFoodCate) {
		this.mnrtFoodCate = mnrtFoodCate;
	}
	public String getMnrtTimeStart() {
		return mnrtTimeStart;
	}
	public void setMnrtTimeStart(String mnrtTimeStart) {
		this.mnrtTimeStart = mnrtTimeStart;
	}
	public String getMnrtTimeEnd() {
		return mnrtTimeEnd;
	}
	public void setMnrtTimeEnd(String mnrtTimeEnd) {
		this.mnrtTimeEnd = mnrtTimeEnd;
	}
	public String getMnrtBreakTimeStart() {
		return mnrtBreakTimeStart;
	}
	public void setMnrtBreakTimeStart(String mnrtBreakTimeStart) {
		this.mnrtBreakTimeStart = mnrtBreakTimeStart;
	}
	public String getMnrtBreakTimeEnd() {
		return mnrtBreakTimeEnd;
	}
	public void setMnrtBreakTimeEnd(String mnrtBreakTimeEnd) {
		this.mnrtBreakTimeEnd = mnrtBreakTimeEnd;
	}
	public String getMnrtHoliday() {
		return mnrtHoliday;
	}
	public void setMnrtHoliday(String mnrtHoliday) {
		this.mnrtHoliday = mnrtHoliday;
	}
	public String getMnrtAvg() {
		return mnrtAvg;
	}
	public void setMnrtAvg(String mnrtAvg) {
		this.mnrtAvg = mnrtAvg;
	}
	public String getMnrtText() {
		return mnrtText;
	}
	public void setMnrtText(String mnrtText) {
		this.mnrtText = mnrtText;
	}
	public String getMnmpSeq() {
		return mnmpSeq;
	}
	public void setMnmpSeq(String mnmpSeq) {
		this.mnmpSeq = mnmpSeq;
	}
	public String getMnrvSeq() {
		return mnrvSeq;
	}
	public void setMnrvSeq(String mnrvSeq) {
		this.mnrvSeq = mnrvSeq;
	}
	public String getMnrvDelNy() {
		return mnrvDelNy;
	}
	public void setMnrvDelNy(String mnrvDelNy) {
		this.mnrvDelNy = mnrvDelNy;
	}
	public String getMnrvScore() {
		return mnrvScore;
	}
	public void setMnrvScore(String mnrvScore) {
		this.mnrvScore = mnrvScore;
	}
	public String getMnrvText() {
		return mnrvText;
	}
	public void setMnrvText(String mnrvText) {
		this.mnrvText = mnrvText;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
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
	public String getMnMmPassword() {
		return mnMmPassword;
	}
	public void setMnMmPassword(String mnMmPassword) {
		this.mnMmPassword = mnMmPassword;
	}
	public String getMnMmName() {
		return mnMmName;
	}
	public void setMnMmName(String mnMmName) {
		this.mnMmName = mnMmName;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public MultipartFile getFile2() {
		return file2;
	}
	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getMncdName() {
		return mncdName;
	}
	public void setMncdName(String mncdName) {
		this.mncdName = mncdName;
	}
	public String getMncdSeq() {
		return mncdSeq;
	}
	public void setMncdSeq(String mncdSeq) {
		this.mncdSeq = mncdSeq;
	}
	public String getMncgSeq() {
		return mncgSeq;
	}
	public void setMncgSeq(String mncgSeq) {
		this.mncgSeq = mncgSeq;
	}
	public String getMncdDelNy() {
		return mncdDelNy;
	}
	public void setMncdDelNy(String mncdDelNy) {
		this.mncdDelNy = mncdDelNy;
	}
	public String getMnrtLogoPath() {
		return mnrtLogoPath;
	}
	public void setMnrtLogoPath(String mnrtLogoPath) {
		this.mnrtLogoPath = mnrtLogoPath;
	}
	public String getMnrtLogoUuidName() {
		return mnrtLogoUuidName;
	}
	public void setMnrtLogoUuidName(String mnrtLogoUuidName) {
		this.mnrtLogoUuidName = mnrtLogoUuidName;
	}
	
	
	
	
	
	
	

	
	
	

}
