package com.jeonguggu.matnam.xmin.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/xmin/memberList")
	public String memberList() {
		
		return "/xmin/member/memberList";
	}	
	
	@RequestMapping(value = "/xmin/memberView")
	public String memberView() {
		
		return "/xmin/member/memberView";
	}	
	
	@RequestMapping(value = "/xmin/memberForm")
	public String memberForm() {
		
		return "/xmin/member/memberForm";
	}		
	
	@RequestMapping(value = "/xmin/memberEdit")
	public String memberEdit() {
		
		return "/xmin/member/memberEdit";
	}		
}
