package com.jeonguggu.matnam.xmin.event;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	
	@RequestMapping(value = "/xmin/eventList")
	public String eventList() {
		
		return "/xmin/event/eventList";
	}	
	
}
