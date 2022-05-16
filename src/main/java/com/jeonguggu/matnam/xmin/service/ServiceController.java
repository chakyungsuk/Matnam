package com.jeonguggu.matnam.xmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	
	@Autowired
	ServiceServiceImp service;
	
	@RequestMapping(value = "/xmin/serviceList")
	public String selectListMember(Model model) throws Exception {
		
		List<Service> list = service.selectListMember();
		model.addAttribute("list", list);
		
		return "/xmin/service/serviceList";
	}		

	@RequestMapping(value = "/xmin/serviceView")
	public String serviceView() {
		
		return "/xmin/service/serviceView";
	}		
	
	@RequestMapping(value = "/xmin/serviceView2")
	public String serviceView2() {
		
		return "/xmin/service/serviceView2";
	}		

	@RequestMapping(value = "/xmin/serviceReply")
	public String serviceReply() {
		
		return "/xmin/service/serviceReply";
	}		
}
