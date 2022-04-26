package com.jeonguggu.matnam.user.store;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class StoreController {
	
	@RequestMapping(value = "user/storeView")
	public String storeView() throws Exception {
		
	

		return "user/store/storeView";
		
	}

}
