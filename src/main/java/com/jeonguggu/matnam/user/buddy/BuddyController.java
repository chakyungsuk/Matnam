package com.jeonguggu.matnam.user.buddy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuddyController {
	
	@RequestMapping(value = "/user/areaSelect")
	public String Select() {
		
		return "/user/area/Select";
	}
	
}
