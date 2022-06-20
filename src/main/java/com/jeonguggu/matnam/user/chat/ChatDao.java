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
// 채팅 상대방 이름 가져오기
	public int selectCount(ChatVo vo) {return sqlSession.selectOne(namespace + ".selectCount", vo);}
	
// 채티방 만들기
	public int insertChattingRoom(Chat dto){ return sqlSession.insert(namespace + ".insertChattingRoom", dto);}
	
// 1:1 채팅
	public Chat selectOne(ChatVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public Chat selectOneuser(ChatVo vo) {return sqlSession.selectOne(namespace + ".selectOneuser", vo);}
}
