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
	
//	ģ�� ��� ��ȸ
	public List<Buddy> selectListFriend(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListFriend", vo);
	}
	
//	����ģ�� ��� ��ȸ
	public List<Buddy> selectListFriendBlock(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListFriendBlock", vo);
	}
	
//	���� ģ����û ��� ��ȸ
	public List<Buddy> selectListUserFriendRequestReceive(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListUserFriendRequestReceive", vo);
	}
	
//	���� ģ����û ��� ��ȸ
	public List<Buddy> selectListUserFriendRequestSend(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListUserFriendRequestSend", vo);
	}
	
//	��Ī ��� ��ȸ
	public List<Buddy> selectListArea(BuddyVo vo) {
		return sqlSession.selectList(namespace + ".selectListArea", vo);
	}

}
