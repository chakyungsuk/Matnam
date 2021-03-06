package com.jeonguggu.matnam.user.buddy;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Buddy {
 
//	유저 정보
	private String mnMmSeq = "";
	private String mnMmName = "";
	private String mnMmId = "";
	private String mnmpNumber = "";
	private String mnMmEmail = "";
	private String mnMmIntroduce = "";
	private String mnMmDob_Year = "";
	private String mnMmGenderCd = "";
	private String mnmaAddress1 = "";
	private String mnMmLike = "";
	private String mnMmMobilePublicNy = "";
	private String mnMmEmailPublicNy = "";
	private String mnMmAddressPublicNy = "";
	private Integer age = 0;
	
//	음식 취향
	private String mnmtSeq = "";
	
//	코드
	private String mncdName = "";
	 
	//친구 목록
	private String mnfdFriendSeq = "";
	private String mnfdSeq = "";
	
//	친구요청
	private String mnfdMessage = "";
	
//	지역
	private String mnmlSeq;
	
	//유저 리뷰
	private String mnrvSeq;
	private String mnrvScore;
	private String mnrvText;
	
	//레스토랑
	private String mnrtName;
	
//	이미지
	private String originalName;
	private String uuidName;
	private String path;
	
//	----------------------------------------

	public String getMnMmSeq() {
		return mnMmSeq;
	}
	public void setMnMmSeq(String mnMmSeq) {
		this.mnMmSeq = mnMmSeq;
	}
	public String getMnMmName() {
		return mnMmName;
	}
	public void setMnMmName(String mnMmName) {
		this.mnMmName = mnMmName;
	}
	public String getMnfdFriendSeq() {
		return mnfdFriendSeq;
	}
	public void setMnfdFriendSeq(String mnfdFriendSeq) {
		this.mnfdFriendSeq = mnfdFriendSeq;
	}
	public String getMnMmIntroduce() {
		return mnMmIntroduce;
	}
	public void setMnMmIntroduce(String mnMmIntroduce) {
		this.mnMmIntroduce = mnMmIntroduce;
	}
	public String getMnfdMessage() {
		return mnfdMessage;
	}
	public void setMnfdMessage(String mnfdMessage) {
		this.mnfdMessage = mnfdMessage;
	}
	public String getMnMmDob_Year() {
		return mnMmDob_Year;
	}
	public void setMnMmDob_Year(String mnMmDob_Year) {
		this.setAge(mnMmDob_Year);
		this.mnMmDob_Year = mnMmDob_Year;
	}
	public String getMnMmGenderCd() {
		return mnMmGenderCd;
	}
	public void setMnMmGenderCd(String mnMmGenderCd) {
		this.mnMmGenderCd = mnMmGenderCd;
	}
	public String getMnmaAddress1() {
		return mnmaAddress1;
	}
	public void setMnmaAddress1(String mnmaAddress1) {
		this.mnmaAddress1 = mnmaAddress1;
	}
	public String getMnMmLike() {
		return mnMmLike;
	}
	public void setMnMmLike(String mnMmLike) {
		this.mnMmLike = mnMmLike;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = getAge(age);
	}
	public Integer getAge(String dobYear) {
		//현재 년도 구하기
		Calendar now = Calendar.getInstance(); //년월일시분초
		Integer currentYear = now.get(Calendar.YEAR);
		
		//태어난년도를 위한 세팅
		SimpleDateFormat format = new SimpleDateFormat("yyyy");
		//태어난 년도
		Integer birthYear = Integer.parseInt(dobYear);
		
		// 현재 년도 - 태어난 년도 => 나이 (만나이X)		 
		return (currentYear - birthYear +1);
	}
	public String getMnMmId() {
		return mnMmId;
	}
	public void setMnMmId(String mnMmId) {
		this.mnMmId = mnMmId;
	}
	public String getMnMmEmail() {
		return mnMmEmail;
	}
	public void setMnMmEmail(String mnMmEmail) {
		this.mnMmEmail = mnMmEmail;
	}
	public String getMnfdSeq() {
		return mnfdSeq;
	}
	public void setMnfdSeq(String mnfdSeq) {
		this.mnfdSeq = mnfdSeq;
	}
	public String getMnmpNumber() {
		return mnmpNumber;
	}
	public void setMnmpNumber(String mnmpNumber) {
		this.mnmpNumber = mnmpNumber;
	}
	public String getMnrvSeq() {
		return mnrvSeq;
	}
	public void setMnrvSeq(String mnrvSeq) {
		this.mnrvSeq = mnrvSeq;
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
	public String getMnrtName() {
		return mnrtName;
	}
	public void setMnrtName(String mnrtName) {
		this.mnrtName = mnrtName;
	}
	public String getMnMmMobilePublicNy() {
		return mnMmMobilePublicNy;
	}
	public void setMnMmMobilePublicNy(String mnMmMobilePublicNy) {
		this.mnMmMobilePublicNy = mnMmMobilePublicNy;
	}
	public String getMnMmEmailPublicNy() {
		return mnMmEmailPublicNy;
	}
	public void setMnMmEmailPublicNy(String mnMmEmailPublicNy) {
		this.mnMmEmailPublicNy = mnMmEmailPublicNy;
	}
	public String getMnMmAddressPublicNy() {
		return mnMmAddressPublicNy;
	}
	public void setMnMmAddressPublicNy(String mnMmAddressPublicNy) {
		this.mnMmAddressPublicNy = mnMmAddressPublicNy;
	}
	public String getMnmtSeq() {
		return mnmtSeq;
	}
	public void setMnmtSeq(String mnmtSeq) {
		this.mnmtSeq = mnmtSeq;
	}
	public String getMncdName() {
		return mncdName;
	}
	public void setMncdName(String mncdName) {
		this.mncdName = mncdName;
	}
	public String getMnmlSeq() {
		return mnmlSeq;
	}
	public void setMnmlSeq(String mnmlSeq) {
		this.mnmlSeq = mnmlSeq;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
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
	
}
