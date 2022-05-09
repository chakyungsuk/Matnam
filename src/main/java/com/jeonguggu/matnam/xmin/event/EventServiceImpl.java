package com.jeonguggu.matnam.xmin.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventServiceImpl implements EventService{
	
	@Autowired
	EventDao dao;

	@Override
	public int selectOneCount(EventVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Event> selectList(EventVo vo) throws Exception {
		return dao.selectList(vo); 
	}

	@Override
	public int insert(Event dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public Event selectOne(EventVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Event dto) throws Exception {
		return dao.update(dto); 
	}

	@Override
	public int delete(EventVo vo) throws Exception {
		return dao.delete(vo); 
	}


	
}