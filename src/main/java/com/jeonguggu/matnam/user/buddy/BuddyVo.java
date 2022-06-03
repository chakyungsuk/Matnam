package com.jeonguggu.matnam.user.buddy;

public class BuddyVo {
	 
//	사용자 조회
	private String mnMmSeq = "";
	private String mnMmName = "";
	private String mnmaAddress1 = "";
	
//	사용자 지역
	private String[] mnmlLocationCdArray;
	
//	사용자 취향
	private String[] mnmtTasteCdArray;
	
//	친구
	private String mnfdFriendSeq;
	
//	친구 삭제
	private String mnfdSeq = "";
	
//	----------------------------

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

	public String getMnmaAddress1() {
		return mnmaAddress1;
	}

	public void setMnmaAddress1(String mnmaAddress1) {
		this.mnmaAddress1 = mnmaAddress1;
	}

	public String getMnfdSeq() {
		return mnfdSeq;
	}

	public void setMnfdSeq(String mnfdSeq) {
		this.mnfdSeq = mnfdSeq;
	}

	public String[] getMnmlLocationCdArray() {
		return mnmlLocationCdArray;
	}

	public void setMnmlLocationCdArray(String[] mnmlLocationCdArray) {
		this.mnmlLocationCdArray = mnmlLocationCdArray;
	}

	public String[] getMnmtTasteCdArray() {
		return mnmtTasteCdArray;
	}

	public void setMnmtTasteCdArray(String[] mnmtTasteCdArray) {
		this.mnmtTasteCdArray = mnmtTasteCdArray;
	}

	public String getMnfdFriendSeq() {
		return mnfdFriendSeq;
	}

	public void setMnfdFriendSeq(String mnfdFriendSeq) {
		this.mnfdFriendSeq = mnfdFriendSeq;
	}
	
	
	
}
