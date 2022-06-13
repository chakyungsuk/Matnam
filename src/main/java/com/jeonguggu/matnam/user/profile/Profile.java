package com.jeonguggu.matnam.user.profile;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Profile {
	
	//유저 정보
	private String mnMmSeq = "";
	private String mnMmId = "";
	private String mnMmPassword = "";
	private String mnMmName = "";
	private String mnMmEmail = "";
	private String mnMmIntroduce = "";
	private String mnMmDob_Year = "";
	private String mnMmDob_Month_Cd = "";
	private String mnMmDob_Day = "";
	private String mnMmGenderCd = "";
	private String mnMmAdminNy = "";
	private String mnMmMobilePublicNy = "";
	private String mnMmEmailPublicNy = "";
	private String mnMmAddressPublicNy = "";
	private Date regDateTime;
	private Date modDateTime;
	
	//유저 모바일
	private String mnmpNumber = "";
	
	//유저 취향
	private String mnmtTasteCd = "";
	private String[] mnmtTasteCdArray;
	
	//유저 주소
	private String mnmaZipcode = "";
	private String mnmaAddress1 = "";
	private String mnmaAddress2 = "";
	
	//유저 리뷰
	private String mnrvSeq;
	private String mnrvScore;
	private String mnrvText;
	
	//유저 지역
	private String mnmlLocationCd;
	
	private String[] mnmlLocationCdArray;
	
	//레스토랑
	private String mnrtName;
	
//	uploaded
	public MultipartFile file;
	public MultipartFile file1;
	public String ifcdOriginalFileName;
	public String ifcdUuidFileName;
	
	private String tableName;

	private String seq;
	private Integer typeCd;
	private Integer defaultNy;
	private Integer sort;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private Integer delNy;
	private String pseq;
	private String path;
	
	private Integer photoBackgroundChanged;
	private Integer photoChanged;
	
//	----------------------------------------
	
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
	public String getMnMmEmail() {
		return mnMmEmail;
	}
	public void setMnMmEmail(String mnMmEmail) {
		this.mnMmEmail = mnMmEmail;
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
		this.mnMmDob_Year = mnMmDob_Year;
	}
	public String getMnMmDob_Month_Cd() {
		return mnMmDob_Month_Cd;
	}
	public void setMnMmDob_Month_Cd(String mnMmDob_Month_Cd) {
		this.mnMmDob_Month_Cd = mnMmDob_Month_Cd;
	}
	public String getMnMmDob_Day() {
		return mnMmDob_Day;
	}
	public void setMnMmDob_Day(String mnMmDob_Day) {
		this.mnMmDob_Day = mnMmDob_Day;
	}
	public String getMnMmGenderCd() {
		return mnMmGenderCd;
	}
	public void setMnMmGenderCd(String mnMmGenderCd) {
		this.mnMmGenderCd = mnMmGenderCd;
	}
	public String getMnMmAdminNy() {
		return mnMmAdminNy;
	}
	public void setMnMmAdminNy(String mnMmAdminNy) {
		this.mnMmAdminNy = mnMmAdminNy;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}
	public String getMnmpNumber() {
		return mnmpNumber;
	}
	public void setMnmpNumber(String mnmpNumber) {
		this.mnmpNumber = mnmpNumber;
	}
	public String getMnmtTasteCd() {
		return mnmtTasteCd;
	}
	public void setMnmtTasteCd(String mnmtTasteCd) {
		this.mnmtTasteCd = mnmtTasteCd;
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
	public String[] getMnmtTasteCdArray() {
		return mnmtTasteCdArray;
	}
	public void setMnmtTasteCdArray(String[] mnmtTasteCdArray) {
		this.mnmtTasteCdArray = mnmtTasteCdArray;
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
	public String getMnmlLocationCd() {
		return mnmlLocationCd;
	}
	public void setMnmlLocationCd(String mnmlLocationCd) {
		this.mnmlLocationCd = mnmlLocationCd;
	}
	public String[] getMnmlLocationCdArray() {
		return mnmlLocationCdArray;
	}
	public void setMnmlLocationCdArray(String[] mnmlLocationCdArray) {
		this.mnmlLocationCdArray = mnmlLocationCdArray;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	public String getIfcdOriginalFileName() {
		return ifcdOriginalFileName;
	}
	public void setIfcdOriginalFileName(String ifcdOriginalFileName) {
		this.ifcdOriginalFileName = ifcdOriginalFileName;
	}
	public String getIfcdUuidFileName() {
		return ifcdUuidFileName;
	}
	public void setIfcdUuidFileName(String ifcdUuidFileName) {
		this.ifcdUuidFileName = ifcdUuidFileName;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
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
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public Integer getTypeCd() {
		return typeCd;
	}
	public void setTypeCd(Integer typeCd) {
		this.typeCd = typeCd;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Integer getPhotoBackgroundChanged() {
		return photoBackgroundChanged;
	}
	public void setPhotoBackgroundChanged(Integer photoBackgroundChanged) {
		this.photoBackgroundChanged = photoBackgroundChanged;
	}
	public Integer getPhotoChanged() {
		return photoChanged;
	}
	public void setPhotoChanged(Integer photoChanged) {
		this.photoChanged = photoChanged;
	}
	
	
}
