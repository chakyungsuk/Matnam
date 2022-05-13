package com.jeonguggu.matnam.xmin.index;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jeonguggu.matnam.xmin.member.Member;

@Controller
public class IndexController {
	
	@RequestMapping(value = "/xmin/indexView")
	public String indexView(@ModelAttribute("vo") IndexVo vo, Model model) throws Exception{
		
		
		return "/xmin/index/indexView";
	}
		
}
