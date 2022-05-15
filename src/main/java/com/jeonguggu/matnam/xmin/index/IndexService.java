package com.jeonguggu.matnam.xmin.index;

import java.util.List;

public interface IndexService {
	
	int selectOneCount(IndexVo vo) throws Exception;
	List<Index> selectList(IndexVo vo) throws Exception; 
	
//	event
	int selectOneCountEvent(IndexVo vo) throws Exception;
	List<Index> selectListEvent(IndexVo vo) throws Exception; 
	
}
