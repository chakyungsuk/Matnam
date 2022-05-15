package com.jeonguggu.matnam.xmin.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IndexServiceImpl implements IndexService{

	@Autowired
	IndexDao dao;
	
	@Override
	public int selectOneCount(IndexVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Index> selectList(IndexVo vo) throws Exception {
		return dao.selectList(vo);
	}

//	event
	@Override
	public int selectOneCountEvent(IndexVo vo) throws Exception {
		return dao.selectOneCountEvent(vo);
	}

	@Override
	public List<Index> selectListEvent(IndexVo vo) throws Exception {
		return dao.selectListEvent(vo);
	}
}
