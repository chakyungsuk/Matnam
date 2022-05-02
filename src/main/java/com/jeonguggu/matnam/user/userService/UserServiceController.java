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
	
	@RequestMapping(value="user/userServiceForm")
	public String userServiceForm ()throws Exception
	{
		
		return "user/service/userServiceForm";
	}
	
	@RequestMapping(value="user/userServiceView")
	public String userServiceView ()throws Exception
	{
		
		return "user/service/userServiceView";
	}
	
	@RequestMapping(value="user/userServiceEdit")
	public String userServiceEdit ()throws Exception
	{
		
		return "user/service/userServiceEdit";
	}

}
