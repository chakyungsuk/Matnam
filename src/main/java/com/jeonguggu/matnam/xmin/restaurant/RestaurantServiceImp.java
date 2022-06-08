package com.jeonguggu.matnam.xmin.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantServiceImp implements RestaurantService {

	@Autowired
	RestaurantDao dao;
	
	@Override
	public int insert(Restaurant dto) throws Exception {
		return dao.insert(dto);
	}
	

}
