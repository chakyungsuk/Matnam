package com.jeonguggu.matnam.user.store;

import java.util.List;


public interface StoreService {
	
	
	//음식점 리스트 출력
	public List<Store> selectListStore() throws Exception;
	
	//음식점 상세정보 출력
	public Store selectOneStore(StoreVo vo) throws Exception;
	
	//리뷰 카운터
	public int selectCountReview(StoreVo vo) throws Exception;
	
	//음식점 리뷰 출력
	public List<Store> selectListReview(StoreVo vo) throws Exception;
	
	//리뷰 상세보기
	public Store selectOneReview(StoreVo vo) throws Exception;
	
	
	
	/////////////// 등록
	
	public int insertReview(Store dto) throws Exception;
	
	
	
	
	///////////////// 업데이트
	
	public int updateReview(Store Dto) throws Exception;
	
	
	
	
	/////////////////삭제
	public int deleteReview(StoreVo vo) throws Exception;
	

}
 