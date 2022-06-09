package com.jeonguggu.matnam.index;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MainDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.jeonguggu.matnam.index.MainMpp";
	
//	카운팅
	public Main selectCountRestaurant() {
		return sqlSession.selectOne(namespace + ".selectCountRestaurant", "");
	}
	public Main selectCountUser() {
		return sqlSession.selectOne(namespace + ".selectCountUser", "");
	}
	public Main selectCountReview() {
		return sqlSession.selectOne(namespace + ".selectCountReview", "");
	}
}
