package com.jeonguggu.matnam.user.buddy;

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

@Controller
public class BuddyController {
	 
	@Autowired
	BuddyServiceImpl service;
	
	@RequestMapping(value = "/user/areaSelect")
	public String Select(@ModelAttribute("vo") BuddyVo vo, Buddy dto, Model model) throws Exception {
		
		List<Buddy> listFriend = service.selectListFriend(vo);
		model.addAttribute("listFriend", listFriend);
		
		List<Buddy> list = service.selectListArea(vo);
		model.addAttribute("list", list);
		
		List<Buddy> tasteList = service.selectListFriendTaste(dto);
		model.addAttribute("tasteList", tasteList);
		
		List<Buddy> RegionList = service.selectListFriendRegion(dto);
		model.addAttribute("RegionList", RegionList);
		
		List<Buddy> friendList = service.selectListFriend(vo);
		model.addAttribute("friendList", friendList);
		
		return "/user/area/Select";
	}

	@RequestMapping(value = "/user/userFriendRequest")
	public String userFriendRequest(BuddyVo vo, Model model) throws Exception {
		
		List<Buddy> listReceive = service.selectListUserFriendRequestReceive(vo);
		List<Buddy> listSend = service.selectListUserFriendRequestSend(vo);
		model.addAttribute("listReceive", listReceive);
		model.addAttribute("listSend", listSend);
		
		return "/user/buddy/userFriendRequest";
	}
	
	@RequestMapping(value = "/user/friendSelect")
	public String friendSelect(BuddyVo vo, Model model) throws Exception {
		
		List<Buddy> list = service.selectListFriend(vo);
		model.addAttribute("list", list);
		return "/user/buddy/friendSelect";
	}
	
	@RequestMapping(value = "/user/blockFriendSelect")
	public String blockFriendSelect(BuddyVo vo, Model model) throws Exception {
		
		List<Buddy> list = service.selectListFriendBlock(vo);
		model.addAttribute("list", list);
		
		return "/user/buddy/blockFriendSelect";
	}
	
	@RequestMapping(value = "/user/friendDetail")
	public String friendDetail(@ModelAttribute("vo") BuddyVo vo, Model model) throws Exception {
		
		Buddy rt = service.selectOneUser(vo);
		model.addAttribute("rt", rt);
		
		List<Buddy> list = service.selectListUserReview(vo);
		model.addAttribute("list", list);
		
		return "/user/buddy/friendDetail";
	}
	
	@RequestMapping(value = "/user/friendDelete")
	public String friendDelete(BuddyVo vo,  RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);	
		redirectAttributes.addAttribute("mnMmSeq", vo.getMnMmSeq());
		
		return "redirect:/user/friendSelect";
	}
	
	@RequestMapping(value = "/user/friendBlock")
	public String friendBlock(@ModelAttribute("vo") BuddyVo vo, Buddy dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
	
		service.friendBlock(dto);		
		
		redirectAttributes.addAttribute("mnMmSeq", vo.getMnMmSeq());
		return "redirect:/user/friendSelect";
	}
	
	@RequestMapping(value = "/user/friendNonBlock")
	public String friendNonBlock(@ModelAttribute("vo") BuddyVo vo, Buddy dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		service.friendNonBlock(dto);		
		
		redirectAttributes.addAttribute("mnMmSeq", vo.getMnMmSeq());
		return "redirect:/user/blockFriendSelect";
	}
	
	@RequestMapping(value = "/user/friendInsert")
	public String friendInsert(Buddy dto, Model model) throws Exception {
		
		service.insertFriend(dto);
		
		return "redirect:/user/areaSelect";
	}
	
	@ResponseBody
	@RequestMapping(value = "/user/friendProc")
	public Map<String, Object> friendProc(BuddyVo vo, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		List<Buddy> rtMember = service.selectListFriendConfirm(vo);

		if(!rtMember.isEmpty()) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
}
