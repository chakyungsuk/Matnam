package com.jeonguggu.matnam.user.buddy;

import java.util.List;

public interface BuddyService {

//	ģ�� ��� ��ȸ
	public List<Buddy> selectListFriend(BuddyVo vo) throws Exception;
	
//	���� ģ�� ��� ��ȸ
	public List<Buddy> selectListFriendBlock(BuddyVo vo) throws Exception;
	
//	���� ģ����û ��� ��ȸ
	public List<Buddy> selectListUserFriendRequestReceive(BuddyVo vo) throws Exception;
	
//	���� ģ����û ��� ��ȸ
	public List<Buddy> selectListUserFriendRequestSend(BuddyVo vo) throws Exception;
	
//	��Ī ��� ��ȸ
	public List<Buddy> selectListArea(BuddyVo vo) throws Exception;
	
}
