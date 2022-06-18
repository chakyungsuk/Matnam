package com.jeonguggu.matnam.xmin.restaurant;

import java.util.List;

public interface RestaurantService {
	
	int selectOneCount(RestaurantVo vo) throws Exception;
	List<Restaurant> selectList(RestaurantVo vo) throws Exception; 
	
	public int insert(Restaurant dto) throws Exception;

}
