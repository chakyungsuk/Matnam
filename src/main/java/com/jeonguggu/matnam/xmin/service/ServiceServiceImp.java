package com.jeonguggu.matnam.xmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


@org.springframework.stereotype.Service
public class ServiceServiceImp implements ServiceService {
	
	@Autowired
	ServiceDao dao;

	@Override
	public List<Service> selectListMember() throws Exception {
		return dao.selectListMember();
	}

	
	@Override
	public List<Service> selectListService() throws Exception {
		return dao.selectListService();
	}


	@Override
	public Service selectOneService(ServiceVo vo) throws Exception {
		return dao.selectOneService(vo);
	}


	@Override
	public int insertService(Service dto) throws Exception {
		return dao.insertService(dto);
	}


	@Override
	public int updateServiceDoneNy(Service dto) throws Exception {
		return dao.updateServiceDoneNy(dto);
	}


	@Override
	public Service selectOneServiceReply(ServiceVo vo) throws Exception {
		return dao.selectOneServiceReply(vo);
	}


	@Override
	public int deleteService(ServiceVo vo) throws Exception {
		return dao.deleteService(vo);
	}
	
	@Override
	public int deleteServiceReply(ServiceVo vo) throws Exception {
		return dao.deleteServiceReply(vo);
	}
	
	
	
	
	
	
	
	

	
	

}
