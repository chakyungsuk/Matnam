package com.jeonguggu.matnam.index;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jeonguggu.matnam.xmin.member.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MatnamMainController {
	
	@Autowired
	MainServiceImpl service;
	
	
	@RequestMapping(value = "/index/matnamMain")
	public String matnamMain(Member meberdto, Main dto, Model model, MainVo vo, HttpSession http) throws Exception {
		
		Main countRestaurant = service.selectCountRestaurant();
		model.addAttribute("countRestaurant", countRestaurant);
		
		Main countUser = service.selectCountUser();
		model.addAttribute("countUser", countUser);
		
		Main countReview = service.selectCountReview();
		model.addAttribute("countReview", countReview);
		
		List<Main> list = service.selectFriend(vo);
		model.addAttribute("list", list);
		
		
//		Main countReview = service.selectList();
//		model.addAttribute("countReview", countReview);
		
		return "/user/index/matnamMain";
	}
	
	@RequestMapping(value = "/")
	public String matnamDomain() {
		
		return "redirect:/index/matnamMain";
	}
	
	@RequestMapping(value = "/index/footer")
	public String matnamFooter() {
		
		return "/user/include/footer";
	}
}
