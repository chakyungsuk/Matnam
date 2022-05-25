package com.jeonguggu.matnam.user.buddy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class BuddyController {
	 
	@Autowired
	BuddyServiceImpl service;
	
	@RequestMapping(value = "/user/areaSelect")
	public String Select(BuddyVo vo, Model model) throws Exception {
		
		List<Buddy> listFriend = service.selectListFriend(vo);
		model.addAttribute("listFriend", listFriend);
		
		vo.setMnmaAddress1("서울");
		List<Buddy> list = service.selectListArea(vo);
		model.addAttribute("list", list);
		
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
	public String friendDetail(BuddyVo vo, Model model) throws Exception {
		
		Buddy rt = service.selectOneUser(vo);
		model.addAttribute("rt", rt);
		
		return "/user/buddy/friendDetail";
	}
	
	@RequestMapping(value = "/user/friendDelete")
	public String friendDelete(BuddyVo vo,  RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("asdakhsfbhabhkbkfakbhfabkhafbkh");
		service.delete(vo);		
		return "redirect:/user/friendSelect";
	}
	
}
