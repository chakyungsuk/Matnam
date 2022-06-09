package com.jeonguggu.matnam.user.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	
	@Autowired
	ChatServiceImpl service;
	
	@RequestMapping(value = "/chat/chatView")
	public String chatView() {
		
		return "/user/chat/chatView";
	}
	
	@RequestMapping(value = "/chat/chatView2")
	public String chatView2(ChatVo vo, Model model) throws Exception {
		
		
		List<Chat> list = service.selectListFriend(vo);
		System.out.println(list);
		model.addAttribute("list", list);
		
		return "/user/chat/chatView2";
	}
}
