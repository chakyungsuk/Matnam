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
	
//	사용자 프로필 조회
	public Buddy selectOneUser(BuddyVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneUser", vo);
	}
	
//	친구 삭제	
	public int delete(BuddyVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
//	차단목록 추가	
	public int friendBlock(Buddy dto) {
		return sqlSession.update(namespace + ".friendBlock", dto);
	}
	
//	차단목록 해제	
	public int friendNonBlock(Buddy dto) {
		return sqlSession.update(namespace + ".friendNonBlock", dto);
	}

}
