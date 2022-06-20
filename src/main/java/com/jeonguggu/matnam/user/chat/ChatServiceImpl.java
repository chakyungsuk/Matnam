package com.jeonguggu.matnam.user.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChatServiceImpl implements ChatService {
	 
	@Autowired
	ChatDao dao;

//	친구 목록 조회
	@Override
	public List<Chat> selectListFriend(ChatVo vo) throws Exception {
		
		return dao.selectListFriend(vo);
	}

	@Override
	public int insertChattingRoom(Chat dto) throws Exception {
		return dao.insertChattingRoom(dto);
	}

	@Override
	public int selectCount(ChatVo vo) throws Exception {
		return dao.selectCount(vo);
	}

	@Override
	public Chat selectOne(ChatVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public Chat selectOneuser(ChatVo vo) throws Exception {
		return dao.selectOneuser(vo);
	}
	
}
