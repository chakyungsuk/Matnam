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

	
	

	
	
	

}
