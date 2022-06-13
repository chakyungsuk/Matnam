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
	
//	매칭 목록 조회
	@Override
	public List<Buddy> selectListArea(BuddyVo vo) throws Exception {
		
		return dao.selectListArea(vo);
	}
	
//	음식 취향 조회
	@Override
	public List<Buddy> selectListFriendTaste(Buddy dto) throws Exception {
		
		return dao.selectListFriendTaste(dto);
	}
	
//	지역 조회
	@Override
	public List<Buddy> selectListFriendRegion(Buddy dto) throws Exception {
		
		return dao.selectListFriendRegion(dto);
	}
	
//	사용자 프로필 조회
	@Override
	public Buddy selectOneUser(BuddyVo vo) throws Exception {
		
		return dao.selectOneUser(vo);
	}

//	친구 삭제	
	@Override
	public int delete(BuddyVo vo) throws Exception {

		return dao.delete(vo);
	}

//	차단목록 추가
	@Override
	public int friendBlock(BuddyVo vo) throws Exception {
		return dao.friendBlock(vo);
	}
	
//	차단목록 해제
	@Override
	public int friendNonBlock(BuddyVo vo) throws Exception {
		return dao.friendNonBlock(vo);
	}
	
//	차단목록 해제
	@Override
	public int friendYes(BuddyVo vo) throws Exception {
		return dao.friendYes(vo);
	}
	
//	사용자 리뷰 조회
	@Override
	public List<Buddy> selectListUserReview(BuddyVo vo) throws Exception {
		return dao.selectListUserReview(vo);
	}
	@Override
	public Buddy selectListPhotoBackground1(BuddyVo vo) throws Exception {
		
		return dao.selectListPhotoBackground1(vo);
	}
	
	@Override
	public Buddy selectListPhoto1(BuddyVo vo) throws Exception {
		
		return dao.selectListPhoto1(vo);
	}
	
//	친구 추가
	@Override
	public int insertFriend(Buddy dto) throws Exception {
		dao.insertFriend(dto);
		
		return 1;
	}
	
//	친구 추가 전 확인
	@Override
	public List<Buddy> selectListFriendConfirm(BuddyVo vo) throws Exception {
		return dao.selectListFriendConfirm(vo);
	}

}
