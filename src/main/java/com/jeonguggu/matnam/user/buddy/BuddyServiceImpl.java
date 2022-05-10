package com.jeonguggu.matnam.user.buddy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuddyServiceImpl implements BuddyService {
	
	@Autowired
	BuddyDao dao;

//	친구 목록 조회
	@Override
	public List<Buddy> selectListFriend(BuddyVo vo) throws Exception {
		
		return dao.selectListFriend(vo);
	}
	
//	차단 친구 목록 조회
	@Override
	public List<Buddy> selectListFriendBlock(BuddyVo vo) throws Exception {
		
		return dao.selectListFriendBlock(vo);
	}
	
//	받은 친구요청 목록 조회
	@Override
	public List<Buddy> selectListUserFriendRequestReceive(BuddyVo vo) throws Exception {
		
		return dao.selectListUserFriendRequestReceive(vo);
	}
	
//	보낸 친구요청 목록 조회
	@Override
	public List<Buddy> selectListUserFriendRequestSend(BuddyVo vo) throws Exception {
		
		return dao.selectListUserFriendRequestSend(vo);
	}

}
