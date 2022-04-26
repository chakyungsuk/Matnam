package com.jeonguggu.matnam.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MatnamMain {
	
	@RequestMapping(value = "/index/matnamMain")
	public String Select() {
		
		return "/user/index/matnamMain";
	}
	
}
