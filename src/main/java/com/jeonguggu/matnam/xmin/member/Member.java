package com.jeonguggu.matnam.xmin.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Member {
	
	private String mnMmSeq;
	private Integer mnMmAdminNy;
	private Integer mnMmDormancy;
	private Integer mnMmDob_Year;
	private Integer mnMmDob_Month_Cd;
	private Integer mnMmDob_Day;
	private String mnMmId;
	private String mnMmName;
	private String mnMmPassword;
	private String mnMmEmail;
	private Integer mnMmRankCd;
	private Integer mnMmGenderCd;
	
	// matnamMemberPhone
	private Integer mnmpDefaultNy;
	private String mnmpNumber;
	private String mobile;
	private Integer mnmpDelNy;
	
	// matnamMemberAddress
	private Integer mnmaDefaultNy;
	private String mnmaZipcode;
	private String mnmaAddress1;
	private String mnmaAddress2;
	private Integer mnmaDelNy;
	
	//file
	private MultipartFile[] file0;
	
	//fileUploaded
	private String TableName;
	private String Seq;
	private Integer type;
	private Integer defaultNy;
	private Integer sort;
	private String originalName;
	private String uuidName;
	private String ext;
	private Long size;
	private Integer DelNy;
	private String Path;
	private String pseq;
	
	//Date
	private Date regDateTime;

	// --------------------------------
	
	public String getMnMmSeq() {
		return mnMmSeq;
	}

	public void setMnMmSeq(String mnMmSeq) {
		this.mnMmSeq = mnMmSeq;
	}

	public Integer getMnMmAdminNy() {
		return mnMmAdminNy;
	}

	public void setMnMmAdminNy(Integer mnMmAdminNy) {
		this.mnMmAdminNy = mnMmAdminNy;
	}

	public Integer getMnMmDormancy() {
		return mnMmDormancy;
	}

	public void setMnMmDormancy(Integer mnMmDormancy) {
		this.mnMmDormancy = mnMmDormancy;
	}

	public Integer getMnMmDob_Year() {
		return mnMmDob_Year;
	}

	public void setMnMmDob_Year(Integer mnMmDob_Year) {
		this.mnMmDob_Year = mnMmDob_Year;
	}

	public Integer getMnMmDob_Month_Cd() {
		return mnMmDob_Month_Cd;
	}

	public void setMnMmDob_Month_Cd(Integer mnMmDob_Month_Cd) {
		this.mnMmDob_Month_Cd = mnMmDob_Month_Cd;
	}

	public Integer getMnMmDob_Day() {
		return mnMmDob_Day;
	}

	public void setMnMmDob_Day(Integer mnMmDob_Day) {
		this.mnMmDob_Day = mnMmDob_Day;
	}

	public String getMnMmId() {
		return mnMmId;
	}

	public void setMnMmId(String mnMmId) {
		this.mnMmId = mnMmId;
	}

	public String getMnMmName() {
		return mnMmName;
	}

	public void setMnMmName(String mnMmName) {
		this.mnMmName = mnMmName;
	}

	public String getMnMmPassword() {
		return mnMmPassword;
	}

	public void setMnMmPassword(String mnMmPassword) {
		this.mnMmPassword = mnMmPassword;
	}

	public Integer getMnMmRankCd() {
		return mnMmRankCd;
	}

	public void setMnMmRankCd(Integer mnMmRankCd) {
		this.mnMmRankCd = mnMmRankCd;
	}

	public Integer getMnMmGenderCd() {
		return mnMmGenderCd;
	}

	public void setMnMmGenderCd(Integer mnMmGenderCd) {
		this.mnMmGenderCd = mnMmGenderCd;
	}

	public Integer getMnmpDefaultNy() {
		return mnmpDefaultNy;
	}

	public void setMnmpDefaultNy(Integer mnmpDefaultNy) {
		this.mnmpDefaultNy = mnmpDefaultNy;
	}

	public String getMnmpNumber() {
		return mnmpNumber;
	}

	public void setMnmpNumber(String mnmpNumber) {
		this.mnmpNumber = mnmpNumber;
	}

	public Integer getMnmpDelNy() {
		return mnmpDelNy;
	}

	public void setMnmpDelNy(Integer mnmpDelNy) {
		this.mnmpDelNy = mnmpDelNy;
	}

	public Integer getMnmaDefaultNy() {
		return mnmaDefaultNy;
	}

	public void setMnmaDefaultNy(Integer mnmaDefaultNy) {
		this.mnmaDefaultNy = mnmaDefaultNy;
	}

	public String getMnmaZipcode() {
		return mnmaZipcode;
	}

	public void setMnmaZipcode(String mnmaZipcode) {
		this.mnmaZipcode = mnmaZipcode;
	}

	public String getMnmaAddress1() {
		return mnmaAddress1;
	}

	public void setMnmaAddress1(String mnmaAddress1) {
		this.mnmaAddress1 = mnmaAddress1;
	}

	public String getMnmaAddress2() {
		return mnmaAddress2;
	}

	public void setMnmaAddress2(String mnmaAddress2) {
		this.mnmaAddress2 = mnmaAddress2;
	}

	public Integer getMnmaDelNy() {
		return mnmaDelNy;
	}

	public void setMnmaDelNy(Integer mnmaDelNy) {
		this.mnmaDelNy = mnmaDelNy;
	}

	public Date getRegDateTime() {
		return regDateTime;
	}

	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}

	public String getTableName() {
		return TableName;
	}

	public void setTableName(String tableName) {
		TableName = tableName;
	}

	public String getSeq() {
		return Seq;
	}

	public void setSeq(String seq) {
		Seq = seq;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getDefaultNy() {
		return defaultNy;
	}

	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
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

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public Integer getDelNy() {
		return DelNy;
	}

	public void setDelNy(Integer delNy) {
		DelNy = delNy;
	}

	public String getPath() {
		return Path;
	}

	public void setPath(String path) {
		Path = path;
	}

	public String getPseq() {
		return pseq;
	}

	public void setPseq(String pseq) {
		this.pseq = pseq;
	}

	public MultipartFile[] getFile0() {
		return file0;
	}

	public void setFile0(MultipartFile[] file0) {
		this.file0 = file0;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getMnMmEmail() {
		return mnMmEmail;
	}

	public void setMnMmEmail(String mnMmEmail) {
		this.mnMmEmail = mnMmEmail;
	}
	
}
