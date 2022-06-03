package com.jeonguggu.matnam.user.userService;

import java.util.List;


public interface UserServiceService {
	
	
	// select
	public List<UserService> selectListService() throws Exception;	
	public UserService selectOneService(UserServiceVo vo) throws Exception;
	public UserService selectOneServiceReply(UserServiceVo vo) throws Exception;
	
	
	// insert
	public int insertService(UserService dto) throws Exception;
	
	
	
	//update
	public int userServiceUpdt(UserService dto) throws Exception;
	
	
	//delete
	public int userServiceDelete(UserServiceVo vo) throws Exception;
	
	
	

}
