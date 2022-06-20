package com.jeonguggu.matnam.user.chat;

import java.util.List;

public interface ChatService {
 
//	친구 목록 조회
	public List<Chat> selectListFriend(ChatVo vo) throws Exception;

//  채팅 상대방 이름가져오기	
	int selectCount(ChatVo vo) throws Exception;
	
//  채티움 만들기	
	int insertChattingRoom(Chat dto) throws Exception; 
	
//  1:1 채팅
	Chat selectOne(ChatVo vo) throws Exception;
	Chat selectOneuser(ChatVo vo) throws Exception;
}
