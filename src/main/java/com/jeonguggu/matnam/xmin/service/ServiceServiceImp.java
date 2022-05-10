package com.jeonguggu.matnam.xmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class ServiceServiceImp implements ServiceService {
	
	@Autowired
	ServiceDao dao;

	@Override
	public List<Service> selectListService(Service vo) throws Exception 
	{
		return dao.selectxminserviceList(vo);
	}

	
	

}
