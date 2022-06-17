package com.jeonguggu.matnam.index;

import java.util.List;

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
	
	public Main selectCountRestaurant() {
		return sqlSession.selectOne(namespace + ".selectCountRestaurant", "");
	}
	public Main selectCountUser() {
		return sqlSession.selectOne(namespace + ".selectCountUser", "");
	}
	public Main selectCountReview() {
		return sqlSession.selectOne(namespace + ".selectCountReview", "");
	}
	
	public List<Main> selectFriend(MainVo vo){return sqlSession.selectList(namespace + ".selectFriend", vo);}
}
