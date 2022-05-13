package com.jeonguggu.matnam.xmin.member;

public class MemberVo {

//	member
	private String mnMmSeq;
	private String mnMmId;
	private String mnMmName;
	private String mnMmRankCd;
	
// matnamMemberPhone
	private String mnmpNumber;
	
//paging
private int thisPage = 1;									// 현재 페이지
private int rowNumToShow = 5;								// 화면에 보여줄 데이터 줄 갯수
private int pageNumToShow = 3;								// 화면에 보여줄 페이징 번호 갯수

private int totalRows;										// 전체 데이터 갯수
private int totalPages;										// 전체 페이지 번호
private int startPage;										// 시작 페이지 번호
private int endPage;										// 마지막 페이지 번호

private int startRnumForOracle = 1;							// 쿼리 시작 ro
private int endRnumForOracle;								// 쿼리 끝 row
private Integer RNUM;

private int startRnumForMysql = 0;							// 쿼리 시작 row

//---------------------------------	
	public void setParamsPaging(int totalRowsParam) {
	
	totalRows = totalRowsParam;

	totalPages = totalRows / rowNumToShow;

	if (totalRows % rowNumToShow > 0) {
		totalPages = totalPages+ 1;
	}

	if (totalPages < thisPage) {
		thisPage = totalPages;
	}
	
	startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

	endPage = (startPage + pageNumToShow - 1);

	if (endPage > totalPages) {
		endPage = (totalPages);
	}
	
	endRnumForOracle = ((rowNumToShow * thisPage));
	startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
	if (startRnumForOracle < 1) startRnumForOracle = 1;
	
	
	if (thisPage == 1 || thisPage == 0 ) {
		startRnumForMysql = 0;
	} else {
		startRnumForMysql = ((rowNumToShow * (thisPage-1)));
	}
	
	System.out.println("getThisPage():" + thisPage);
	System.out.println("getTotalRows():" + totalRows);
	System.out.println("getRowNumToShow():" + rowNumToShow);
	System.out.println("getTotalPages():" + totalPages);
	System.out.println("getStartPage():" + startPage);
	System.out.println("getEndPage():" + endPage);		
	System.out.println("getStartRnumForOracle():" + startRnumForOracle);
	System.out.println("getEndRnumForOracle():" + endRnumForOracle);
	System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
	
	}

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

	public String getMnMmName() {
		return mnMmName;
	}

	public void setMnMmName(String mnMmName) {
		this.mnMmName = mnMmName;
	}

	public String getMnMmRankCd() {
		return mnMmRankCd;
	}

	public void setMnMmRankCd(String mnMmRankCd) {
		this.mnMmRankCd = mnMmRankCd;
	}

	public String getMnmpNumber() {
		return mnmpNumber;
	}

	public void setMnmpNumber(String mnmpNumber) {
		this.mnmpNumber = mnmpNumber;
	}

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	
		
}

