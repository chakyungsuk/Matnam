package com.jeonguggu.matnam.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

	private String mncdSeq;
	private String mncdName;
	private String mncdDelNy;
	private String mncgSeq;
	private String mncdUseNy;
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>(); 
	
//	--------------------------
	
	public String getMncdSeq() {
		return mncdSeq;
	}
	public void setMncdSeq(String mncdSeq) {
		this.mncdSeq = mncdSeq;
	}
	public String getMncdName() {
		return mncdName;
	}
	public void setMncdName(String mncdName) {
		this.mncdName = mncdName;
	}
	public String getMncdDelNy() {
		return mncdDelNy;
	}
	public void setMncdDelNy(String mncdDelNy) {
		this.mncdDelNy = mncdDelNy;
	}
	public String getMncgSeq() {
		return mncgSeq;
	}
	public void setMncgSeq(String mncgSeq) {
		this.mncgSeq = mncgSeq;
	}
	public String getMncdUseNy() {
		return mncdUseNy;
	}
	public void setMncdUseNy(String mncdUseNy) {
		this.mncdUseNy = mncdUseNy;
	}
	
	
}
