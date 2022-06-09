package com.jeonguggu.matnam.xmin.restaurant;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace="com.jeonguggu.matnam.xmin.restaurant.RestaurantMpp";
	
	
	public int insert(Restaurant dto) {return sqlSession.insert(namespace + ".insert" , dto);}

}
