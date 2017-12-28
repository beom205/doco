package com.doco.web;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.doco.domain.Member;
import com.doco.service.MemberService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/member")
public class MemberController {
	@Inject
	private MemberService mService;
	
	@GetMapping("/login")
	public void loginGet(@ModelAttribute("dto") Member member) {
		log.info("===로그인 페이지 들어옴====");
	}
	
	@PostMapping("/loginPost")
	public void loginPost(Member memberDomain, HttpSession session, Model model) throws Exception {
		System.out.println("==== 로그인 포스트 =====");
		
		Member member = mService.login(memberDomain);
		log.info("loginpost member : "+ member);
		
		model.addAttribute("member", member);
		if(member == null) {
			System.out.println("member 는 null");
			return ;
		}
		System.out.println("member null 아닐 때");
		
	}
}
