package com.jeonguggu.matnam.user.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


public class UserServiceServiceImp implements StoreService {
	
	
	@Autowired
	StoreDao dao;

	@Override
	public List<Store> selectListStore() throws Exception {
		return dao.selectListStore();
	}

	@Override
	public Store selectOneStore() throws Exception {
		return dao.selectOneStore();
	}
	

	
}
