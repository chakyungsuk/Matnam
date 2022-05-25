package com.jeonguggu.matnam.user.buddy;

import java.util.List;

public interface BuddyService {
 
//	친구 목록 조회
	public List<Buddy> selectListFriend(BuddyVo vo) throws Exception;
	
//	차단 친구 목록 조회
	public List<Buddy> selectListFriendBlock(BuddyVo vo) throws Exception;
	
//	받은 친구요청 목록 조회
	public List<Buddy> selectListUserFriendRequestReceive(BuddyVo vo) throws Exception;
	
//	보낸 친구요청 목록 조회
	public List<Buddy> selectListUserFriendRequestSend(BuddyVo vo) throws Exception;
	
//	매칭 목록 조회
	public List<Buddy> selectListArea(BuddyVo vo) throws Exception;
	
//	사용자 프로필 조회
	public Buddy selectOneUser(BuddyVo vo) throws Exception;

//	친구 삭제
	int delete(BuddyVo vo) throws Exception;
	
}
