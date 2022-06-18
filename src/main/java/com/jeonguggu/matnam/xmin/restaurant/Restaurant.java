package com.jeonguggu.matnam.xmin.restaurant;

import org.springframework.web.multipart.MultipartFile;

public class Restaurant {
	
	private String mnrtSeq;
	private String mnrtDelNy;
	private String mnrtName;
	private String mnrtAddressFull;
	private String mnrtCityCd;
	private String mnrtX;
	private String mnrtY;
	private String mnrtNumber;
	private String mnrtTimeStart;
	private String mnrtTimeEnd;
	private String mnrtBreakTimeStart;
	private String mnrtBreakTimeEnd;
	private String mnrtFoodCateCd;
	private String mnrtHolidayCd;
	private String mnrtText;
	
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
	
//	code
	private String mncdName;

//	------------------------------------
	
	public String getMnrtSeq() {
		return mnrtSeq;
	}
	public void setMnrtSeq(String mnrtSeq) {
		this.mnrtSeq = mnrtSeq;
	}
	public String getMnrtDelNy() {
		return mnrtDelNy;
	}
	public void setMnrtDelNy(String mnrtDelNy) {
		this.mnrtDelNy = mnrtDelNy;
	}
	public String getMnrtName() {
		return mnrtName;
	}
	public void setMnrtName(String mnrtName) {
		this.mnrtName = mnrtName;
	}
	public String getMnrtAddressFull() {
		return mnrtAddressFull;
	}
	public void setMnrtAddressFull(String mnrtAddressFull) {
		this.mnrtAddressFull = mnrtAddressFull;
	}
	public String getMnrtCityCd() {
		return mnrtCityCd;
	}
	public void setMnrtCityCd(String mnrtCityCd) {
		this.mnrtCityCd = mnrtCityCd;
	}
	public String getMnrtX() {
		return mnrtX;
	}
	public void setMnrtX(String mnrtX) {
		this.mnrtX = mnrtX;
	}
	public String getMnrtY() {
		return mnrtY;
	}
	public void setMnrtY(String mnrtY) {
		this.mnrtY = mnrtY;
	}
	public String getMnrtNumber() {
		return mnrtNumber;
	}
	public void setMnrtNumber(String mnrtNumber) {
		this.mnrtNumber = mnrtNumber;
	}
	public String getMnrtFoodCateCd() {
		return mnrtFoodCateCd;
	}
	public void setMnrtFoodCateCd(String mnrtFoodCateCd) {
		this.mnrtFoodCateCd = mnrtFoodCateCd;
	}
	public String getMnrtHolidayCd() {
		return mnrtHolidayCd;
	}
	public void setMnrtHolidayCd(String mnrtHolidayCd) {
		this.mnrtHolidayCd = mnrtHolidayCd;
	}
	public String getMnrtText() {
		return mnrtText;
	}
	public void setMnrtText(String mnrtText) {
		this.mnrtText = mnrtText;
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
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
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
	public Integer getTypeCd() {
		return typeCd;
	}
	public void setTypeCd(Integer typeCd) {
		this.typeCd = typeCd;
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
	public String getMnrtTimeStart() {
		return mnrtTimeStart;
	}
	public void setMnrtTimeStart(String mnrtTimeStart) {
		this.mnrtTimeStart = mnrtTimeStart;
	}
	public String getMnrtTimeEnd() {
		return mnrtTimeEnd;
	}
	public void setMnrtTimeEnd(String mnrtTimeEnd) {
		this.mnrtTimeEnd = mnrtTimeEnd;
	}
	public String getMnrtBreakTimeStart() {
		return mnrtBreakTimeStart;
	}
	public void setMnrtBreakTimeStart(String mnrtBreakTimeStart) {
		this.mnrtBreakTimeStart = mnrtBreakTimeStart;
	}
	public String getMnrtBreakTimeEnd() {
		return mnrtBreakTimeEnd;
	}
	public void setMnrtBreakTimeEnd(String mnrtBreakTimeEnd) {
		this.mnrtBreakTimeEnd = mnrtBreakTimeEnd;
	}
	public String getMncdName() {
		return mncdName;
	}
	public void setMncdName(String mncdName) {
		this.mncdName = mncdName;
	}
	
	
}
