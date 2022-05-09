package com.jeonguggu.matnam.xmin.event;

import java.util.List;

public interface EventService {
	
	int selectOneCount(EventVo vo) throws Exception;
	List<Event> selectList(EventVo vo) throws Exception; 
	int insert(Event dto) throws Exception; 
	Event selectOne(EventVo vo) throws Exception;
	int update(Event dto) throws Exception;
	int delete(EventVo vo) throws Exception;
	
}