package com.jeonguggu.matnam.user.store;

import java.util.List;


public interface StoreService {
	
	
	public List<Store> selectListStore() throws Exception;
	
	public Store selectOneStore() throws Exception;

}
