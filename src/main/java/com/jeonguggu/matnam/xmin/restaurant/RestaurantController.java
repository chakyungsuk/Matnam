package com.jeonguggu.matnam.xmin.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {
	
	@Autowired
	RestaurantServiceImp service;
	
	@RequestMapping(value = "/xmin/restaurantList")
	public String restaurantList() {
		
		return "/xmin/restaurant/restaurantList";
	}		
	
	@RequestMapping(value="/xmin/restaurantForm")
	public String restaurantForm() throws Exception {
		
		
		return "/xmin/restaurant/restaurantForm";
	}
	@RequestMapping(value="/xmin/restaurantInst")
	public String restaurantInst(Restaurant dto) throws Exception {
		
	
		service.insert(dto);
		
		
		return "redirect:/xmin/restaurantList";
	}
}
