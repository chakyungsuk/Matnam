package com.jeonguggu.matnam.user.buddy;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BuddyDao {
 
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.jeonguggu.matnam.user.buddy.BuddyMpp";
	
//	친구 목록 조회
	public List<Buddy> selectListFriend(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListFriend", vo);
	}
	
//	차단친구 목록 조회
	public List<Buddy> selectListFriendBlock(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListFriendBlock", vo);
	}
	
//	받은 친구요청 목록 조회
	public List<Buddy> selectListUserFriendRequestReceive(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListUserFriendRequestReceive", vo);
	}
	
//	보낸 친구요청 목록 조회
	public List<Buddy> selectListUserFriendRequestSend(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListUserFriendRequestSend", vo);
	}
	
//	매칭 목록 조회
	public List<Buddy> selectListArea(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListArea", vo);
	}
	
//	음식 취향 목록 조회
	public List<Buddy> selectListFriendTaste(Buddy dto) {
		return sqlSession.selectList(namespace + ".selectListFriendTaste", dto);
	}
	
//	지역 목록 조회
	public List<Buddy> selectListFriendRegion(Buddy dto) {
		return sqlSession.selectList(namespace + ".selectListFriendRegion", dto);
	}
	
//	사용자 프로필 조회
	public Buddy selectOneUser(BuddyVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneUser", vo);
	}
	
//	친구 삭제	
	public int delete(BuddyVo vo) {
		return sqlSession.delete(namespace + ".delete", vo); 
	}
	
//	차단목록 추가	
	public int friendBlock(BuddyVo vo) {
		return sqlSession.update(namespace + ".friendBlock", vo);
	}
	
//	차단목록 해제	
	public int friendNonBlock(BuddyVo vo) {
		return sqlSession.update(namespace + ".friendNonBlock", vo);
	}
	
//	받은 친구 추가	
	public int friendYes(BuddyVo vo) {
		return sqlSession.update(namespace + ".friendYes", vo);
	}
	
//	사용자 리뷰 조회
	public List<Buddy> selectListUserReview(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListUserReview", vo);
	}
	
//	친구 추가
	public int insertFriend(Buddy dto) {
		return sqlSession.insert(namespace + ".insertFriend", dto);
	}
	
//	친구 추가 전 확인
	public List<Buddy> selectListFriendConfirm(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListFriendConfirm", vo);
	}


}
