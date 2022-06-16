package com.jeonguggu.matnam.user.chat;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Chat {
 
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
	private String mcfmSeq = "";
	
//채팅방 만들기	
	private String mnChat_Num = "";
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
	public String getMnChat_Num() {
		return mnChat_Num;
	}
	public void setMnChat_Num(String mnChat_Num) {
		this.mnChat_Num = mnChat_Num;
	}
	public String getMcfmSeq() {
		return mcfmSeq;
	}
	public void setMcfmSeq(String mcfmSeq) {
		this.mcfmSeq = mcfmSeq;
	}
	
}
