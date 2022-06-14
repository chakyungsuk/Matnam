package com.jeonguggu.matnam.user.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoreServiceImp implements StoreService {
	
	@Autowired
	StoreDao dao;

	@Override
	public List<Store> selectListStore() throws Exception {
		return dao.selectListStore();
	}

	@Override
	public Store selectOneStore(StoreVo vo) throws Exception {
		return dao.selectOneStore(vo);
	}

	@Override
	public List<Store> selectListReview(StoreVo vo) throws Exception {
		return dao.selectListReview(vo);
	}

	@Override
	public int selectCountReview(StoreVo vo) throws Exception {
		return dao.selectCountReview(vo);
	}

	@Override
	public Store selectOneReview(StoreVo vo) throws Exception {
		return dao.selectOneReview(vo);
	}
	
	@Override
	public int selectAvg(StoreVo vo) throws Exception {
		return dao.selectAvg(vo);
	}
	


	////////////////////등록
	
	

	@Override
	public int insertReview(Store dto) throws Exception {
		System.out.println("serviceImp:"+dto.getMnMmSeq());
		System.out.println("serviceImp:"+dto.getMnrvText());
		System.out.println("serviceImp:"+dto.getMnrtSeq());
		return dao.insertReview(dto);
	}
	
	
	///////////////////업데이트
	
	@Override
	public int updateReview(Store Dto) throws Exception {
		return dao.updateReview(Dto);
	}

	

	/////////////////삭제
	

	@Override
	public int deleteReview(StoreVo vo) throws Exception {
		return dao.deleteReview(vo);
	}
	

	
	

	
	
	

}
