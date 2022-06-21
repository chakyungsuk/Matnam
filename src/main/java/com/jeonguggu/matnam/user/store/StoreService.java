package com.jeonguggu.matnam.user.store;

import java.util.List;


public interface StoreService {
	
	
	//�쓬�떇�젏 由ъ뒪�듃 異쒕젰
	public List<Store> selectListStore(StoreVo vo) throws Exception;
	
	public List<Store> selectRoad(StoreVo vo) throws Exception;
	 
	//�쓬�떇�젏 �긽�꽭�젙蹂� 異쒕젰
	public Store selectOneStore(StoreVo vo) throws Exception;
	
	//由щ럭 移댁슫�꽣
	public int selectCountReview(StoreVo vo) throws Exception;
	
	//�쓬�떇�젏 由щ럭 異쒕젰
	public List<Store> selectListReview(StoreVo vo) throws Exception;
	
	//由щ럭 �긽�꽭蹂닿린
	public Store selectOneReview(StoreVo vo) throws Exception;
	
	public int selectAvg(StoreVo vo) throws Exception;
	
	public int selectStoreCount(StoreVo vo) throws Exception;
	
	public int selectRoadCount(StoreVo vo) throws Exception;
	
	
	
	/////////////// �벑濡�
	
	public int insertReview(Store dto) throws Exception;
	
	
	
	
	///////////////// �뾽�뜲�씠�듃
	
	public int updateReview(Store Dto) throws Exception;
	
	
	
	
	/////////////////�궘�젣
	public int deleteReview(StoreVo vo) throws Exception;
	

}
 