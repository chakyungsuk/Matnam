package com.jeonguggu.matnam.user.profile;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProfileController {
	
	@RequestMapping(value = "/user/loginForm")
	public String loginForm() {
		
		return "/user/member/loginForm";
	}
	
	@RequestMapping(value = "/user/signupForm")
	public String signupForm() {
		
		return "/user/member/signupForm";
	}
}
