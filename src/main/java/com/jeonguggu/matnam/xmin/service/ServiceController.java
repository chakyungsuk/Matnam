package com.jeonguggu.matnam.xmin.service;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	
	@RequestMapping(value = "/xmin/serviceList")
	public String serviceList() {
		
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
