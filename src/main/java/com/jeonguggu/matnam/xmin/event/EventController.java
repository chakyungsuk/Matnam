package com.jeonguggu.matnam.xmin.event;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	
	@RequestMapping(value = "/xmin/eventList")
	public String eventList() {
		
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
