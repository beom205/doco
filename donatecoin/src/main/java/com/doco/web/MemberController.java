package com.doco.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

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
	public void loginPost(Member vo,Boolean remember,HttpSession session, Model model) throws Exception {
		System.out.println("==== 로그인 포스트 =====");
		
		Member member = mService.login(vo);
		log.info("loginpost member : "+ member);
		log.info("remember me : " + remember);
		model.addAttribute("member", member);
		if(member == null) {
			log.info("member 는 null : 아이디나 비번틀림 or 미입력");
			model.addAttribute("msg",false);
			return ;
		}
		log.info("member null 아닐 때 : 로그인 성공");
		model.addAttribute("msg",true);
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logoutGet(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		Object obj = session.getAttribute("login");
		log.info("시작");
		
		log.info("갖고 있던 세션: " + obj.toString());
		
		
		log.info("" + session.getAttribute("login"));
		log.info("" + WebUtils.getCookie(request, "login"));
		
		if (obj != null) {
			session.removeAttribute("login");
			session.invalidate();
		}
		log.info("끝");
		return "redirect:/";
	}

	@PostMapping("/idCheck")
	@ResponseBody
	public Integer idCheck(String id) {
		log.info("id : " + id);
		String result = mService.idCheck(id);
		log.info("result : " + result);
		if(result == null) {
			return -1;
		}
		
		log.info("result는 null이 아님");
		return 1;
	}
	
	@GetMapping("/join")
	public void registerForm() {
		
	}
	
	@PostMapping("/join")
	public String registerMember(Member vo, Model model) {
		
		log.info("한글 이름 : " + vo.getName());
		
		mService.register(vo);

		return "redirect:/";
	}
}
