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
	
//	음식 취향 조회
	public List<Buddy> selectListFriendTaste(Buddy dto) throws Exception;
	
//	지역 조회
	public List<Buddy> selectListFriendRegion(Buddy dto) throws Exception;
	
//	사용자 프로필 조회
	public Buddy selectOneUser(BuddyVo vo) throws Exception;
	public Buddy selectListPhotoBackground1(BuddyVo vo) throws Exception;
	public Buddy selectListPhoto1(BuddyVo vo) throws Exception;

//	친구 삭제
	int delete(BuddyVo vo) throws Exception;
	
//	차단목록 추가
	int friendBlock(BuddyVo vo) throws Exception;
	
//	차단목록 해제
	int friendNonBlock(BuddyVo vo) throws Exception;
	
//	받은 친구 추가
	int friendYes(BuddyVo vo) throws Exception;
	
//	사용자 리뷰 조회
	public List<Buddy> selectListUserReview(BuddyVo vo) throws Exception;
	
//	친구 추가
	public int insertFriend(Buddy dto) throws Exception;
	
//	친구 추가 전 확인
	public List<Buddy> selectListFriendConfirm(BuddyVo vo) throws Exception;
	
}
