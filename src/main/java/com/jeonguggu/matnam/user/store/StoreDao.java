package com.jeonguggu.matnam.user.store;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class StoreDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private static String namespace = "com.jeonguggu.matnam.user.store.StoreMpp";
	
	
	
	// 음식점 리스트 출력
	public List<Store> selectListStore(){return sqlSession.selectList(namespace + ".selectListStore");}
	
	// 음식점 상세정보 출력
	public Store selectOneStore(StoreVo vo) {return sqlSession.selectOne(namespace +  ".selectOneStore", vo);}
	
	// 음식점 리뷰 출력
	public List<Store> selectListReview(StoreVo vo){return sqlSession.selectList(namespace + ".selectListReview", vo);}
	

	

}
