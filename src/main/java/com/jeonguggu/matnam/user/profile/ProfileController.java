package com.jeonguggu.matnam.user.profile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProfileController {
	
	@Autowired
	ProfileServiceImpl service;
	
	@RequestMapping(value = "/user/loginForm")
	public String loginForm() {
		
		
		
		return "/user/member/loginForm";
	}
	
	@RequestMapping(value = "/user/userForm")
	public String userForm() {
		
		return "/user/member/userForm";
	}
	
	@RequestMapping(value = "/user/userEdit")
	public String userEdit() {
		
		return "/user/member/userEdit";
	}
	
	@RequestMapping(value = "/user/profileView")
	public String profileView(ProfileVo vo, Model model) throws Exception {
		
		vo.setMnMmSeq("3");
		Profile rt = service.selectOneProfile(vo);
		model.addAttribute("rt", rt);
		
		return "/user/member/profileView";
	}
	
	@RequestMapping(value = "/user/profileEdit")
	public String profileEdit(ProfileVo vo, Model model) throws Exception {
		
		vo.setMnMmSeq("3");
		Profile rt = service.selectOneProfile(vo);
		model.addAttribute("rt", rt);
		
		return "/user/member/profileEdit";
	}
	
//	@RequestMapping(value = "/top")
//	public String top() {
//		
//		return "/user/include/top";
//	}
}
