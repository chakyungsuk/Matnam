package com.jeonguggu.matnam.user.store;

import java.util.List;


public interface StoreService {
	
	
	//음식점 리스트 출력
	public List<Store> selectListStore() throws Exception;
	
	//음식점 상세정보 출력
	public Store selectOneStore(StoreVo vo) throws Exception;
	
	//음식점 리뷰 출력
	public List<Store> selectListReview(StoreVo vo) throws Exception;

}
