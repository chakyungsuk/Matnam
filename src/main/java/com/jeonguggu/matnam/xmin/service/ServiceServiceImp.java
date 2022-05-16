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

	

	
	

}
