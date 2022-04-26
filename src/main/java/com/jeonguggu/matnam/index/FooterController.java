package com.jeonguggu.matnam.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class FooterController {
	
	@RequestMapping(value = "/index/footer")
	public String matnamMain() {
		
		return "/user/include/footer";
	}
}
