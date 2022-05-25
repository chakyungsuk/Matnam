package com.jeonguggu.matnam.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MatnamMainController {
	
	@RequestMapping(value = "/index/matnamMain")
	public String matnamMain() {
		
		return "/user/index/matnamMain";
	}
	
	@RequestMapping(value = "/")
	public String matnamDomain() {
		
		return "redirect:/index/matnamMain";
	}
}
