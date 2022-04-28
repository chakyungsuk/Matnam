package com.jeonguggu.matnam.xmin.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value = "/xmin/indexView")
	public String indexView() {
		
		return "/xmin/index/indexView";
	}
		
}
