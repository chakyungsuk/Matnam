package com.jeonguggu.matnam.user.chat;

public class ChatVo {
	 
//  채팅방 
	private String mnChat_Num = "";	
	
//	사용자 조회
	private String mnMmSeq = "";
	private String mnMmName = "";
	private String mnMmIntroduce = "";
	private String mcfmSeq = "";
	
//	친구
	private String mnfdSeq = "";
	private String mnfdFriendSeq;
	private String fdmnMmName;
	private String sessSeq;
	

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

	public String getMnChat_Num() {
		return mnChat_Num;
	}

	public void setMnChat_Num(String mnChat_Num) {
		this.mnChat_Num = mnChat_Num;
	}

	public String getFdmnMmName() {
		return fdmnMmName;
	}

	public void setFdmnMmName(String fdmnMmName) {
		this.fdmnMmName = fdmnMmName;
	}

	public String getMcfmSeq() {
		return mcfmSeq;
	}

	public void setMcfmSeq(String mcfmSeq) {
		this.mcfmSeq = mcfmSeq;
	}

	public String getSessSeq() {
		return sessSeq;
	}

	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}

	
	
}
