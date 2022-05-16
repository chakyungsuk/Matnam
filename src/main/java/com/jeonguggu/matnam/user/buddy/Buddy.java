package com.jeonguggu.matnam.user.buddy;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Buddy {
 
//	���� ����
	private String mnMmSeq = "";
	private String mnMmName = "";
	private String mnMmIntroduce = "";
	private String mnMmDob_Year = "";
	private String mnMmGenderCd = "";
	private String mnmaAddress1 = "";
	private String mnMmLike = "";
	private Integer age = 0;
	
	//ģ�� ���
	private String mnfdFriendSeq = "";
	
//	ģ����û
	private String mnfdMessage = "";
	
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
		//���� �⵵ ���ϱ�
		Calendar now = Calendar.getInstance(); //����Ͻú���
		Integer currentYear = now.get(Calendar.YEAR);
		
		//�¾�⵵�� ���� ����
		SimpleDateFormat format = new SimpleDateFormat("yyyy");
		//�¾ �⵵
		Integer birthYear = Integer.parseInt(dobYear);
		
		// ���� �⵵ - �¾ �⵵ => ���� (������X)		 
		return (currentYear - birthYear +1);
	}
}
