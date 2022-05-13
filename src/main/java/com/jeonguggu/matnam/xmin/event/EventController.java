package com.jeonguggu.matnam.xmin.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class EventController {
	
	@Autowired
	EventServiceImpl service;	
	
	@RequestMapping(value = "/xmin/eventList")
	public String eventList(@ModelAttribute("vo") EventVo vo, Model model) throws Exception {
		
		int count = service.selectOneCount(vo);
		System.out.println(count);
		
		vo.setParamsPaging(count);
		
		if (count != 0) {
			List<Event> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}
		
		return "/xmin/event/eventList";
	}		
	
	@RequestMapping(value = "/xmin/eventView")
	public String eventView() {
		
		return "/xmin/event/eventView";
	}		
	
	@RequestMapping(value = "/xmin/eventForm")
	public String eventForm() {
		
		return "/xmin/event/eventForm";
	}		
	
	@RequestMapping(value = "/xmin/eventEdit")
	public String eventEdit() {
		
		return "/xmin/event/eventEdit";
	}		
}
