package com.jeonguggu.matnam.xmin.service;

import java.util.List;


public interface ServiceService {
	
	
	public List<Service> selectListMember() throws Exception;
	
	public List<Service> selectListService() throws Exception;
	
	public Service selectOneService(ServiceVo vo) throws Exception;
	
	
	public Service selectOneServiceReply(ServiceVo vo) throws Exception;
	
	
	public int insertService(Service dto) throws Exception;
	
	
	public int updateServiceDoneNy(Service dto) throws Exception;
	
	
	public int deleteService (ServiceVo vo) throws Exception;
	
	
	public int deleteServiceReply (ServiceVo vo) throws Exception;
	
	
	

}
