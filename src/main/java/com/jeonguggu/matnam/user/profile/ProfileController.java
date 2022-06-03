package com.jeonguggu.matnam.user.profile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
//	@ResponseBody
//	@RequestMapping(value = "/IdCheckService")
//	public Map<String, Object> IdCheckService(ProfileVo vo) throws Exception {
//		Map<String, Object> returnMap = new HashMap<String, Object>();
//		
//		int member = service.checkId(vo);
//		
//		if (member == 0) {
//			returnMap.put("rt", "success");
//		} else {
//			returnMap.put("rt", "fail");
//		}
//		
//		return returnMap;
//	}
	
	@ResponseBody
	@RequestMapping(value = "/IdCheckService")
	public Boolean IdCheckService(ProfileVo vo) throws Exception {
		
		int member = service.checkId(vo);
		
		if (member == 0) {
			return true;
		} else {
			return false;
		}
	}
	
	@RequestMapping(value = "/user/userInst")
	public String userInst(Profile dto) throws Exception {
		
		service.insert(dto);
		
		return "redirect:/user/loginForm";
	}
	
	@RequestMapping(value = "/user/userEdit")
	public String userEdit(ProfileVo vo, Model model) throws Exception {
		
		Profile rt = service.selectOneUserMember(vo);
		model.addAttribute("rt", rt);
		
		return "/user/member/userEdit";
	}
	
	@RequestMapping(value = "/user/userUpdt")
	public String userUpdt(@ModelAttribute("vo") ProfileVo vo, Profile dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		service.updateUserMember(dto);
		
		redirectAttributes.addAttribute("mnMmSeq", vo.getMnMmSeq());	//get
		
		return "redirect:/user/profileView";
	}
	
	@RequestMapping(value = "/user/profileView")
	public String profileView(ProfileVo vo, Model model) throws Exception {
		
		Profile rt = service.selectOneProfile(vo);
		model.addAttribute("rt", rt);
		
		return "/user/member/profileView";
	}
	
	@RequestMapping(value = "/user/profileEdit")
	public String profileEdit(ProfileVo vo, Profile dto, Model model) throws Exception {
		
		Profile rt = service.selectOneProfile(vo);
		model.addAttribute("rt", rt);
		
		List<Profile> regionList = service.selectListFriendRegion(dto);
		model.addAttribute("regionList", regionList);
		
		return "/user/member/profileEdit";
	}
	
	@RequestMapping(value = "/user/profileUpdt")
	public String profileUpdt(@ModelAttribute("vo") ProfileVo vo, Profile dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		service.updateProfile(dto, vo);
		
		redirectAttributes.addAttribute("mnMmSeq", vo.getMnMmSeq());	//get
		
		return "redirect:/user/profileView";
	}
	
	@RequestMapping(value = "/user/reviewView")
	public String reviewView(ProfileVo vo, Model model) throws Exception {
		
		List<Profile> list = service.selectListReview(vo);
		model.addAttribute("list", list);
		
		return "/user/member/reviewView";
	}
	
	@RequestMapping(value = "/user/reviewDelete")
	public String reviewDelete(ProfileVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {

		service.uptDelReview(vo);
		
		redirectAttributes.addAttribute("mnMmSeq", vo.getMnMmSeq());
		
		return "redirect:/user/reviewView";
	}
	
//	@RequestMapping(value = "/test")
//	public String test() {
//		
//		return "/user/member/test";
//	}
//	
//	@RequestMapping(value = "/index2")
//	public String index2() {
//		
//		return "/user/member/index2";
//	}
}
