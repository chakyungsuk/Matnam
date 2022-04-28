package com.jeonguggu.matnam.xmin.service;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	
	@RequestMapping(value = "/xmin/servicetList")
	public String serviceList() {
		
		return "/xmin/service/serviceList";
	}		
}
