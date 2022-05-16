package com.jeonguggu.matnam.user.userService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceServiceImp implements UserServiceService {
	@Autowired
	UserServiceDao dao;

	@Override
	public List<UserService> selectListService() throws Exception 
	{
		return dao.selectListService();
	}

	
	

}
