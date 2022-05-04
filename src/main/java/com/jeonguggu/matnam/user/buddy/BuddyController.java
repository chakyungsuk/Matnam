package com.jeonguggu.matnam.user.buddy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuddyController {
	
	@RequestMapping(value = "/user/areaSelect")
	public String Select() {
		
		return "/user/area/Select";
	}

	@RequestMapping(value = "/user/userFriendRequest")
	public String userFriendRequest() {
		
		return "/user/buddy/userFriendRequest";
	}
	
	@RequestMapping(value = "/user/friendSelect")
	public String friendSelect() {
		
		return "/user/buddy/friendSelect";
	}
	
	@RequestMapping(value = "/user/blockFriendSelect")
	public String blockFriendSelect() {
		
		return "/user/buddy/blockFriendSelect";
	}
	
	@RequestMapping(value = "/user/friendDetail")
	public String friendDetail() {
		
		return "/user/buddy/friendDetail";
	}
	
	@RequestMapping(value = "/user/test")
	public String test() {
		
		return "/user/chat/Chat-App/dist/index2";
	}
}
