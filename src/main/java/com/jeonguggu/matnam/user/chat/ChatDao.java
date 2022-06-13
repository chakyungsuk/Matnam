package com.jeonguggu.matnam.user.chat;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDao {
 
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.jeonguggu.matnam.user.chat.ChatMpp";
	
//	친구 목록 조회
	public List<Chat> selectListFriend(ChatVo vo) {
		return sqlSession.selectList(namespace + ".selectListFriend", vo);
	}
	
// 채티방 만들기
	public int insertChattingRoom(Chat dto){ return sqlSession.insert(namespace + ".insertChattingRoom", dto);}
}
