package com.jeonguggu.matnam.xmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	
	@Autowired
	ServiceServiceImp service;
	
	@RequestMapping(value = "/xmin/serviceList")
	public String selectListMember(Model model) throws Exception {
		
		List<Service> list = service.selectListService();
		model.addAttribute("list", list);
		
		return "/xmin/service/serviceList";
	}		

	@RequestMapping(value = "/xmin/serviceView")
	public String serviceView(Model model , ServiceVo vo) throws Exception {
		
		
		Service rt = service.selectOneService(vo);
		Service rtReply = service.selectOneServiceReply(vo);
		
		
		model.addAttribute("rt" , rt);
		model.addAttribute("rtReply" , rtReply);
		
		
		
		
		
		return "/xmin/service/serviceView";
	}		
	
	@RequestMapping(value = "/xmin/serviceView2")
	public String serviceView2() {
		
		return "/xmin/service/serviceView2";
	}		

	@RequestMapping(value = "/xmin/serviceReply")
	public String serviceReply(Model model , ServiceVo vo) throws Exception {
		
		Service rt = service.selectOneService(vo);
		
		model.addAttribute("rt" , rt);
		
		return "/xmin/service/serviceReply";
	}		
	
	
	@RequestMapping(value="/xmin/serviceInst")
	public String serviceInst(Service dto) throws Exception {
		
		service.insertService(dto);
		service.updateServiceDoneNy(dto);
		
		return "redirect:/xmin/serviceList ";
	}
	
	@RequestMapping(value="/xmin/deleteService")
	public String deleteService(ServiceVo vo) throws Exception {
		
		
		service.deleteServiceReply(vo);
		service.deleteService(vo);
		
		return "redirect:/xmin/serviceList ";
	}
}
