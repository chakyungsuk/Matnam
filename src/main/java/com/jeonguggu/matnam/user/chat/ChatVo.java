package com.jeonguggu.matnam.user.chat;

public class ChatVo {
	 
//	사용자 조회
	private String mnMmSeq = "";
	private String mnMmName = "";
	private String mnMmIntroduce = "";
	
	
//	친구
	private String mnfdSeq = "";
	private String mnfdFriendSeq;
	
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

	public String getMnfdSeq() {
		return mnfdSeq;
	}

	public void setMnfdSeq(String mnfdSeq) {
		this.mnfdSeq = mnfdSeq;
	}
	
	
	
}
