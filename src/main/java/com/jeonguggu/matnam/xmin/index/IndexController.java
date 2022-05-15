package com.jeonguggu.matnam.xmin.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	private static final String IndexVo = null;
	@Autowired
	IndexServiceImpl service;
	
	@RequestMapping(value = "/xmin/indexView")
	public String indexView(@ModelAttribute("vo") IndexVo vo, Model model) throws Exception{
		
		int count = service.selectOneCount(vo);
		
		if (count != 0) {
			List<Index> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}
		
//-------------------------------------event----------------------------------------
		int countEvent = service.selectOneCountEvent(vo);
		
		if (countEvent != 0) {
			List<Index> list = service.selectListEvent(vo);
			model.addAttribute("listEvent", list);
		} else {
			// by pass
		}
		
		
		return "/xmin/index/indexView";
	}

}
