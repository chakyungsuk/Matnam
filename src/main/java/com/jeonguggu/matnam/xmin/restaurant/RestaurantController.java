package com.jeonguggu.matnam.xmin.restaurant;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {
	
	@RequestMapping(value = "/xmin/restaurantList")
	public String restaurantList() {
		
		return "/xmin/restaurant/restaurantList";
	}		
}
