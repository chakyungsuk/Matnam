package com.jeonguggu.matnam.xmin.restaurant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {
	
	@Autowired
	RestaurantServiceImpl service;
	
	@RequestMapping(value = "/xmin/restaurantList")
	public String restaurantList(@ModelAttribute("vo") RestaurantVo vo, Model model) throws Exception {
		
		int count = service.selectOneCount(vo);
		System.out.println(count);
		
		vo.setParamsPaging(count);
		
		if (count != 0) {
			List<Restaurant> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}
		
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
