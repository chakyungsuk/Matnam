package com.jeonguggu.matnam.user.chat;

import java.util.List;

public interface ChatService {
 
//	친구 목록 조회
	public List<Chat> selectListFriend(ChatVo vo) throws Exception;

//  채티움 만들기	
	int insertChattingRoom(Chat dto) throws Exception; 
}
