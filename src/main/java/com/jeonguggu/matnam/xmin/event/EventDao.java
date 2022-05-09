package com.jeonguggu.matnam.xmin.event;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class EventDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.jeonguggu.matnam.xmin.event.EventMpp";
	
	public int selectOneCount(EventVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo);}	
	public List<Event> selectList(EventVo vo) { List<Event> list = sqlSession.selectList(namespace + ".selectList", vo); return list;}	
	public int insert(Event dto){return sqlSession.insert(namespace + ".insert", dto);}
	public Event selectOne(EventVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}	
	public int update(Event dto) { return sqlSession.update(namespace + ".update", dto);}	
	public int delete(EventVo vo) { return sqlSession.delete(namespace + ".delete", vo);}	
	
}