package com.doco.web;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.doco.domain.Request;
import com.doco.service.RequestService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/request/*")
public class RequestController {

	@Autowired
	private RequestService service;
	
	@GetMapping("/register")
	public void registerGET() {
		 
	}
	//등록
	@PostMapping("/register")
	public String RegisterPost(Request request, RedirectAttributes rttr, String[] files){
	
		log.info("" + request);
		log.info("files:"+Arrays.toString(files));
		
		service.register(request,files);
		
		rttr.addFlashAttribute("result", "success");
		
		return "redirect:/request/list";
	}
	
	//상세 
	@GetMapping("/read")
	public void read(@RequestParam(name="no")int no,Model model) {
		model.addAttribute("request",service.get(no));
	}
	
//	@GetMapping("/list")
//	public void list(Criteria cri, Model model) {
//		model.addAttribute("list",service.getList(cri));
//		model.addAttribute("total",service.getListCount(cri));
//		log.info("" + cri);
//	}
	
	//목록
	@GetMapping("/list")
		public void listAll(Model model) {
		
		log.info("listAll");
		model.addAttribute("list", service.listAll());
		
	}
	
	@GetMapping("/modify")
	public void modify(int no, Model model) {
	
		model.addAttribute(service.get(no));
	}
	
	@PostMapping("/modify")
	public String modifyPost(Request request, RedirectAttributes red) {
		
		service.modify(request);
		
		red.addFlashAttribute("msg","ok");
		
		return "redirect:/request/list";
		
	}
	
	// 삭제
	@PostMapping("/remove")
	public String remove(@RequestParam(name="no") int no, RedirectAttributes red) {
		
		service.remove(no);
		
		red.addFlashAttribute("msg","ok");
		
		return "redirect:/request/list";
		
	}
	
}
