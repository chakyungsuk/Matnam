package com.jeonguggu.matnam.xmin.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class ServiceDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.jeonguggu.matnam.xmin.service.ServiceMpp";
	
	public List<Service> selectListMember(){ return sqlSession.selectList(namespace + ".selectListMember");}
}