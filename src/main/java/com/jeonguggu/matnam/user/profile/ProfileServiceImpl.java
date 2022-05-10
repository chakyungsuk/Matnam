package com.jeonguggu.matnam.user.profile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProfileServiceImpl implements ProfileService {
	
	@Autowired
	ProfileDao dao;

//	�α���
	@Override
	public Profile selectOneLogin(Profile dto) throws Exception {
		return dao.selectOneLogin(dto);
	}
	
//	ȸ�� ������ ��ȸ
	@Override
	public Profile selectOneProfile(ProfileVo vo) throws Exception {
		
		return dao.selectOneProfile(vo);
	}

}
