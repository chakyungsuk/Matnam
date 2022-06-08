package com.jeonguggu.matnam.xmin.restaurant;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {
	
	@RequestMapping(value = "/xmin/restaurantList")
	public String restaurantList() {
		
		return "/xmin/restaurant/restaurantList";
	}		
	
	@RequestMapping(value="/xmin/restaurantForm")
	public String restaurantForm() throws Exception {
		
		
		return "/xmin/restaurant/restaurantForm";
	}
	@RequestMapping(value="/xmin/restaurantInst")
	public String restaurantInst() throws Exception {
		
		
		return "redirect:/xmin/restaurant/restaurantList";
	}
}
