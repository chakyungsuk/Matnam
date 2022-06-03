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
	
	
	@RequestMapping(value="/user/userServiceList")
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
	public String userServiceView (Model model, UserServiceVo vo)throws Exception
	{
		UserService rtService = service.selectOneService(vo);
		
		UserService rtServiceReply = service.selectOneServiceReply(vo);
		
		model.addAttribute("rtService" , rtService);
		model.addAttribute("rtServiceReply" , rtServiceReply);
		

		return "user/service/userServiceView";
	}
	
	@RequestMapping(value="user/userServiceEdit")
	public String userServiceEdit (Model model, UserServiceVo vo)throws Exception
	{
		
		UserService rtService = service.selectOneService(vo);
		
		model.addAttribute("rtService" , rtService);
		
		return "user/service/userServiceEdit";
	}
	
	@RequestMapping(value="/user/userServiceInst")
	public String userServiceInst(Model model,UserService dto)throws Exception
	{
		service.insertService(dto);
		
		return "redirect:/user/userServiceList";
	}
	
	@RequestMapping(value="/user/userServiceUpdt")
	public String userServiceUpdt(Model model,UserService dto)throws Exception
	{
		service.userServiceUpdt(dto);
	
		
		return "redirect:/user/userServiceList";
	}
	
	@RequestMapping(value="/user/userServiceDele")
	public String userServiceDele(Model model,UserServiceVo vo)throws Exception
	{
		service.userServiceDelete(vo);
		
		
		return "redirect:/user/userServiceList";
	}

}
