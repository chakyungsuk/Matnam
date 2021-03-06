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
	public List<Store> selectListStore(StoreVo vo){return sqlSession.selectList(namespace + ".selectListStore" , vo);}
	
	public List<Store> selectRoad(StoreVo vo){return sqlSession.selectList(namespace + ".selectRoad" , vo);}
	
	// 음식점 상세정보 출력
	public Store selectOneStore(StoreVo vo) {return sqlSession.selectOne(namespace +  ".selectOneStore", vo);}
	
	// 음식점 리뷰 출력
	public List<Store> selectListReview(StoreVo vo){return sqlSession.selectList(namespace + ".selectListReview", vo);}
	
	// 리뷰 카운터
	public int selectCountReview(StoreVo vo) {return sqlSession.selectOne(namespace +  ".selectCountReview", vo);}
	
	//음식점 리스트 카운터
	public int selectStoreCount(StoreVo vo) {return sqlSession.selectOne(namespace + ".selectStoreCount", vo);}
	
	public int selectRoadCount(StoreVo vo) {return sqlSession.selectOne(namespace + ".selectRoadCount", vo);}
	
	
	//리뷰 상세정보
	public Store selectOneReview(StoreVo vo) {return sqlSession.selectOne(namespace + ".selectOneReview" ,vo);} 
	
	public int selectAvg(StoreVo vo) {return sqlSession.selectOne(namespace + ".selectAvg" , vo);}
	
	
	//////////////// 등록
	
	public int insertReview(Store dto) {return sqlSession.insert(namespace + ".insertReview" , dto);}
	
	///////////////// 업데이트
	
	public int updateReview(Store dto) {return sqlSession.update(namespace + ".updateReview", dto);}
	
	
	
	/////////////////삭제
	
	public int deleteReview(StoreVo vo) {return sqlSession.delete(namespace + ".deleteReview", vo ); } 
	

}
