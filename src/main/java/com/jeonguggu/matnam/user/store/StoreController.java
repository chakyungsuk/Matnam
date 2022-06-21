package com.jeonguggu.matnam.user.store;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class StoreController {
	
	@Autowired
	StoreServiceImp service;
	
	
	@RequestMapping(value = "user/storeView")
	public String storeView(Model model) throws Exception {
		
//		List <Store> list = service.selectListStore();
//	
//		model.addAttribute("list",list);

		return "user/store/storeView";
		
	}
	
	
	@RequestMapping(value = "user/storeDetail")
	public String storeDetail(Model model,StoreVo vo) throws Exception {
		
		
		int rtAvg = 0;
		
		try {
			
			rtAvg = service.selectAvg(vo);
			
		}catch(Exception e){
			
			rtAvg = 0;
			
		}
		
		int rtCount = service.selectCountReview(vo);
		vo.setTotalRows(rtCount);
		
		
		Store rtStore = service.selectOneStore(vo);
		List <Store> rtReview = service.selectListReview(vo);
		
		
		
		
		model.addAttribute("rtStore" , rtStore);
		model.addAttribute("rtReview" , rtReview);
		model.addAttribute("rtCount" , rtCount);
		model.addAttribute("rtAvg" , rtAvg);
		
		return "/user/store/storeDetail";
		
	}
	
	
	@RequestMapping(value="user/storeReviewView")
	public String storeReviewView(Model model,StoreVo vo) throws Exception {
		
		Store rtReview = service.selectOneReview(vo);
		
		model.addAttribute("rtReview" , rtReview);
		
		
		return "user/store/storeReviewView";
	}
	
	@RequestMapping(value="user/storeReviewEdit")
	public String storeReviewEdit(Model model,StoreVo vo) throws Exception {
		
		Store rtReview = service.selectOneReview(vo);
		
		model.addAttribute("rtReview" , rtReview);
		
		
		return "user/store/storeReviewEdit";
	}
	
	@RequestMapping(value="user/userReviewForm")
	public String userReviewForm() throws Exception {
		
		
		
		return "user/store/storeReviewForm";
	}
	
	@RequestMapping(value="user/storeReviewUpdt")
	public String storeReviewUpdt(Store dto) throws Exception {
		
		service.updateReview(dto);
		
		return "redirect:/user/storeReviewView?mnrtSeq=" + dto.getMnrtSeq() + "&mnMmSeq=" + dto.getMnMmSeq() ;
	}
	
	@RequestMapping(value="user/storeReviewDele")
	public String storeReviewDele(StoreVo vo) throws Exception {
		
		service.deleteReview(vo);
		
		return "redirect:/user/storeDetail?mnrtSeq=" + vo.getMnrtSeq();
	}
	
	@RequestMapping(value="user/storeReviewInst")
	public String storeReviewInst(StoreVo vo,Store dto) throws Exception {
		
		System.out.println(dto.getMnrvScore());
		service.insertReview(dto);
		
		return "redirect:/user/storeDetail?mnrtSeq=" + vo.getMnrtSeq();
	}
	
	@ResponseBody
	@RequestMapping(value="user/reviewInst")
	public Map<String , Object> storeReviewInstTest( Store dto , StoreVo vo) throws Exception {
		Map<String , Object> rtReturn = new HashMap<String , Object>();
		
		
		service.insertReview(dto);
		
		
		rtReturn.put("rt","success");
		
		
		
		return rtReturn;
	}
	
	@ResponseBody
	@RequestMapping(value="user/storeSearch")
	public Map<String , Object> storeSearch(Model model,  Store dto , StoreVo vo) throws Exception {
		Map<String , Object> rtReturn = new HashMap<String , Object>();
		
		System.out.println("vo.getNeLat()" + vo.getNeLat());
		
		int sum = service.selectStoreCount(vo);
		
		List<Store> list = service.selectListStore(vo);
		model.addAttribute("list" , list);
		
		rtReturn.put("list",list);
		rtReturn.put("sum",sum);
		rtReturn.put("rt","success");
		
		
		
		return rtReturn;
	}

}
