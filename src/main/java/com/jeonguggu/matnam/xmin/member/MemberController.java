package com.jeonguggu.matnam.xmin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/xmin/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		int count = service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
		
		if (count != 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}
		
		return "/xmin/member/memberList";
	}	
	
	@RequestMapping(value = "/xmin/memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		return "/xmin/member/memberView";
	}	
	
	@RequestMapping(value = "/xmin/memberForm")
	public String memberForm() {
		
		return "/xmin/member/memberForm";
	}		
	
	@RequestMapping(value = "/xmin/memberInst")
	public String memberInst(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xmin/memberList";
	}
	
	@RequestMapping(value = "/xmin/memberEdit")
	public String memberEdit(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "/xmin/member/memberEdit";
	}		
	
	@RequestMapping(value = "/xmin/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		//수정 프로세스 실행
		service.update(dto);
		
		/* vo.setIfmmSeq(dto.getIfmmSeq()); */

		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xmin/memberView";
	}
}
