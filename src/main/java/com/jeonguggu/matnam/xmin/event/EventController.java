package com.jeonguggu.matnam.xmin.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




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
	public String eventView(Model model, EventVo vo) throws Exception {
		
		Event item = service.selectOne(vo);
		
		model.addAttribute("item", item);
				
		return "/xmin/event/eventView";
	}		
	
	@RequestMapping(value = "/xmin/eventForm")
	public String eventForm(Model model) throws Exception {
		
		return "/xmin/event/eventForm";
	}		
	
	@RequestMapping(value = "/xmin/eventInst")
	public String eventInst(Model model, Event dto) throws Exception {
		
		System.out.println(dto.getMnevTitle());
		service.insert(dto);
		return "redirect:/xmin/eventList";
	}		
	
	@RequestMapping(value = "/xmin/eventEdit")
	public String eventEdit(EventVo vo, Model model) throws Exception {
		
		Event item = service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		return "/xmin/event/eventEdit";
	}		
	
	@RequestMapping(value = "/xmin/eventUpdt")
	public String eventUpdt(Event dto) throws Exception {
		
		service.update(dto);
		return "redirect:/xmin/eventView?mnevSeq=" + dto.getMnevSeq();
	}		
	
	@RequestMapping(value = "/xmin/eventDele")
	public String eventDele(EventVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		return "redirect:/xmin/eventList";
	}		
}
