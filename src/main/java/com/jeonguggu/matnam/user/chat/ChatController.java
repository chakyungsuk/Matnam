package com.jeonguggu.matnam.user.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	
	@RequestMapping(value = "/chat/chatView")
	public String chatView() {
		
		return "/user/chat/chatView";
	}
	
	@RequestMapping(value = "/chat/chatView2")
	public String chatView2() {
		
		return "/user/chat/chatView2";
	}
}
