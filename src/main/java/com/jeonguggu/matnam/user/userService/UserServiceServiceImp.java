package com.jeonguggu.matnam.user.userService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceServiceImp implements UserServiceService {
	@Autowired
	UserServiceDao dao;
	
//리스트출력
	@Override
	public List<UserService> selectListService() throws Exception {
		return dao.selectListService();
	}
	@Override
	public UserService selectOneService(UserServiceVo vo) throws Exception {
		return dao.selectOneService(vo);
	}

	@Override
	public UserService selectOneServiceReply(UserServiceVo vo) throws Exception {
		return dao.selectOneServiceReply(vo);
	}
	
//	등록
	@Override
	public int insertService(UserService dto) throws Exception {
		return dao.insertService(dto);
	}

// 업데이트
	@Override
	public int userServiceUpdt(UserService dto) throws Exception {
		return dao.userServiceUpdt(dto);
	}

	
//삭제
	@Override
	public int userServiceDelete(UserServiceVo vo) throws Exception {
		return dao.userServiceDelete(vo);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	

}
