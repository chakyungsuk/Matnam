package com.jeonguggu.matnam.user.profile;

public class ProfileVo {
	private String mnMmSeq = "";
	private String mnMmId = "";
	
//	회원 리뷰
	private String mnrvSeq;
	
	// -------------------------

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

	public String getMnrvSeq() {
		return mnrvSeq;
	}

	public void setMnrvSeq(String mnrvSeq) {
		this.mnrvSeq = mnrvSeq;
	}
	
	
}
