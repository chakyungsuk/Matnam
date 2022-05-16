package com.jeonguggu.matnam.user.profile;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody
	@RequestMapping(value = "/user/loginProc")
	public Map<String, Object> loginProc(Profile dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Profile rtMember = service.selectOneLogin(dto);

		if(rtMember != null) {
//			rtMember = service.selectOneLogin(dto);
			
			httpSession.setAttribute("sessSeq", rtMember.getMnMmSeq());
			httpSession.setAttribute("sessId", rtMember.getMnMmId());
			httpSession.setAttribute("sessName", rtMember.getMnMmName()); 
			httpSession.setAttribute("sessAdminNy", rtMember.getMnMmAdminNy()); 
			
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/user/logoutProc")
	public Map<String, Object> logoutProc(Profile dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		httpSession.invalidate();
		
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
	@RequestMapping(value = "/user/userForm")
	public String userForm() {
		
		return "/user/member/userForm";
	}
	
	@RequestMapping(value = "/user/userEdit")
	public String userEdit(ProfileVo vo, Model model) throws Exception {
		
		Profile rt = service.selectOneUserMember(vo);
		model.addAttribute("rt", rt);
		
		return "/user/member/userEdit";
	}
	
	@RequestMapping(value = "/user/profileView")
	public String profileView(ProfileVo vo, Model model) throws Exception {
		
		Profile rt = service.selectOneProfile(vo);
		model.addAttribute("rt", rt);
		
		return "/user/member/profileView";
	}
	
	@RequestMapping(value = "/user/profileEdit")
	public String profileEdit(ProfileVo vo, Model model) throws Exception {
		
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
