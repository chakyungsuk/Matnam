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
	
	
	public List<Store> selectListStore(){return sqlSession.selectList(namespace + ".selectListStore");}
	
	public Store selectOneStore() {return sqlSession.selectOne(namespace +  ".selectOneStore");}

}
