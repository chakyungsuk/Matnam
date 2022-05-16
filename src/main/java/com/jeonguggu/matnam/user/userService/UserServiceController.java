package com.jeonguggu.matnam.user.userService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserServiceController {
	
	@Autowired
	UserServiceServiceImp service;
	
	
	@RequestMapping(value="user/userServiceList")
	public String userServiceList (Model model,UserService dto)throws Exception
	{
		List<UserService> list = service.selectListService();
		model.addAttribute("list", list);
		
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
