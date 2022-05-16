package com.jeonguggu.matnam.user.store;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class StoreController {
	
	@Autowired
	StoreServiceImp service;
	
	
	@RequestMapping(value = "user/storeView")
	public String storeView(Model model) throws Exception {
		
		List <Store> list = service.selectListStore();
	
		model.addAttribute("list",list);

		return "user/store/storeView";
		
	}
	
	@RequestMapping(value = "user/storeTest")
	public String storeTest(Model model,StoreVo vo) throws Exception {
		
		vo.setMnrtSeq("1");
		
		List <Store> list = service.selectListReview(vo);
		
		model.addAttribute("list",list);
		
		return "user/store/storeTest";
		
	}
	
	@RequestMapping(value = "user/storeDetail")
	public String storeDetail(Model model,StoreVo vo) throws Exception {
		
		
		Store rtStore = service.selectOneStore(vo);
		List <Store> rtReview = service.selectListReview(vo);
				
		
		
		model.addAttribute("rtStore" , rtStore);
		model.addAttribute("rtReview" , rtReview);
		
		return "/user/store/storeDetail";
		
	}
	
	@RequestMapping(value="user/userReviewForm")
	public String userReviewForm() throws Exception {
		
		
		
		return "user/store/storeReviewForm";
	}

}
