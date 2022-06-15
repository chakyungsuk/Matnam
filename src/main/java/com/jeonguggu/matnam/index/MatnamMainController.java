package com.jeonguggu.matnam.index;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MatnamMainController {
	
	@Autowired
	MainServiceImpl service;
	
	@RequestMapping(value = "/index/matnamMain")
	public String matnamMain(Main dto, Model model) throws Exception {
		
		Main countRestaurant = service.selectCountRestaurant();
		model.addAttribute("countRestaurant", countRestaurant);
		
		Main countUser = service.selectCountUser();
		model.addAttribute("countUser", countUser);
		
		Main countReview = service.selectCountReview();
		model.addAttribute("countReview", countReview);
		
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
