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
	
	
	public List<Service> selectListService(){ return sqlSession.selectList(namespace + ".selectListService");}
	
	
	public Service selectOneService(ServiceVo vo ) {return sqlSession.selectOne(namespace + ".selectOneService", vo);}
	
	public Service selectOneServiceReply(ServiceVo vo ) {return sqlSession.selectOne(namespace + ".selectOneServiceReply", vo);}
	
	
	
	public int insertService(Service dto) {return sqlSession.insert(namespace + ".insertService" , dto);}
	
	public int updateServiceDoneNy(Service dto) {return sqlSession.update(namespace + ".updateServiceDoneNy",dto);}
	
	public int deleteService(ServiceVo vo) {return sqlSession.delete(namespace + ".deleteService" , vo);}
	
	public int deleteServiceReply(ServiceVo vo) {return sqlSession.delete(namespace + ".deleteServiceReply" , vo);}
}