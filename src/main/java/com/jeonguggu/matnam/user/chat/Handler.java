package com.jeonguggu.matnam.user.chat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class Handler extends TextWebSocketHandler {

	//로그인 session 구분없이 담음
	Map<String, WebSocketSession> userSession = new HashMap<>();
	
	//채팅 룸별로 유저 저장
	Map<String, List<String>> Chatuser = new HashMap<>();
	
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		String sessSeq = getSessSeq(session);
		userSession.put(sessSeq, session);
		
		String roomSeq = getroomSeq(session);
		 
		if(Chatuser.get(roomSeq) == null) {
			List<String> list = new ArrayList<>();
			Chatuser.put(roomSeq, list);
		}
		
		if(!Chatuser.get(roomSeq).contains(sessSeq)) {
			Chatuser.get(roomSeq).add(sessSeq);
		}
		
		
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		String msg = message.getPayload();
		
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode node = objectMapper.readTree(msg);
		
		if(node.get("type").asText().equals("type")) {
			String roomSeq = node.get("roomSeq").asText();
			
			List<String> chatUserList = Chatuser.get(roomSeq);
					
			
			for(int i = 0; i < chatUserList.size(); i++) {
				if(chatUserList.get(i) != getSessSeq(session)) {
					userSession.get(chatUserList.get(i)).sendMessage(message);
				}
			}
			
		}
		
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		
		System.out.println("접속끊김");
	}
	
	private String getSessSeq(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		
		for(String key : httpSession.keySet()) {
			String value = String.valueOf(httpSession.get(key));
			System.out.println("[key] : " + key + ", [value] : " + value);
		}
		 
		return (String) httpSession.get("sessSeq");
	}
	
	private String getroomSeq(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		return (String) httpSession.get("roomSeq");
	}
}