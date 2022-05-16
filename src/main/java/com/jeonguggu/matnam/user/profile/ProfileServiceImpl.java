package com.jeonguggu.matnam.user.profile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProfileServiceImpl implements ProfileService {
	
	@Autowired
	ProfileDao dao;

//	로그인
	@Override
	public Profile selectOneLogin(Profile dto) throws Exception {
		return dao.selectOneLogin(dto);
	}
	
//	회원 프로필 조회
	@Override
	public Profile selectOneProfile(ProfileVo vo) throws Exception {
		
		return dao.selectOneProfile(vo);
	}
	
//	회원 정보 조회
	@Override
	public Profile selectOneUserMember(ProfileVo vo) throws Exception {
		
		return dao.selectOneUserMember(vo);
	}

}
