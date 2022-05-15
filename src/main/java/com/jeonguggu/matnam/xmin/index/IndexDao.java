package com.jeonguggu.matnam.xmin.index;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class IndexDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.jeonguggu.matnam.xmin.index.IndexMpp";
	
	public int selectOneCount(IndexVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo);}	
	public List<Index> selectList(IndexVo vo) { List<Index> list = sqlSession.selectList(namespace + ".selectList", vo); return list;}
	
//	event
	public int selectOneCountEvent(IndexVo vo) { return sqlSession.selectOne(namespace + ".selectOneCountEvent", vo);}	
	public List<Index> selectListEvent(IndexVo vo) { List<Index> list = sqlSession.selectList(namespace + ".selectListEvent", vo); return list;}
	
}
