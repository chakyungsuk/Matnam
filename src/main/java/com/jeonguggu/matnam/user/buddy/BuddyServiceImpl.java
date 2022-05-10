package com.jeonguggu.matnam.user.buddy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuddyServiceImpl implements BuddyService {
	
	@Autowired
	BuddyDao dao;

//	ģ�� ��� ��ȸ
	@Override
	public List<Buddy> selectListFriend(BuddyVo vo) throws Exception {
		
		return dao.selectListFriend(vo);
	}
	
//	���� ģ�� ��� ��ȸ
	@Override
	public List<Buddy> selectListFriendBlock(BuddyVo vo) throws Exception {
		
		return dao.selectListFriendBlock(vo);
	}
	
//	���� ģ����û ��� ��ȸ
	@Override
	public List<Buddy> selectListUserFriendRequestReceive(BuddyVo vo) throws Exception {
		
		return dao.selectListUserFriendRequestReceive(vo);
	}
	
//	���� ģ����û ��� ��ȸ
	@Override
	public List<Buddy> selectListUserFriendRequestSend(BuddyVo vo) throws Exception {
		
		return dao.selectListUserFriendRequestSend(vo);
	}

}
