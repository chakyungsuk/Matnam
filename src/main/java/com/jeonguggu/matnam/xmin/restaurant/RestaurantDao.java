package com.jeonguggu.matnam.xmin.restaurant;

import java.util.List;

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
	
	
	
	public int selectOneCount(RestaurantVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo);}	
	public List<Restaurant> selectList(RestaurantVo vo) { List<Restaurant> list = sqlSession.selectList(namespace + ".selectList", vo); return list;}
	
	public int insert(Restaurant dto) {return sqlSession.insert(namespace + ".insert" , dto);}
	
//	uploaded
	public int insertUploadedRestaurant(Restaurant dto) {
		return sqlSession.insert(namespace + ".insertUploadedRestaurant", dto);
	}

}
