package com.jeonguggu.matnam.user.userService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserServiceController {
	
	
	@RequestMapping(value="user/userServiceList")
	public String userServiceList ()throws Exception
	{
		
		return "user/service/userServiceList";
	}

}
