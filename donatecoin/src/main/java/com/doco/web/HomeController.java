package com.doco.web;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doco.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	
	@GetMapping("/hi")
	public void hello() {
		
	}
	
	@RequestMapping(value="/doA", method=RequestMethod.GET)
	public String doA(Locale locale,Model model) {
		System.out.println("doA....");
		
		return "home";
	}
	
	@RequestMapping(value="/doB", method=RequestMethod.GET)
	public String doB(Locale locale,Model model) {
		System.out.println("doB....");
		
		model.addAttribute("result","DOB RESULT");
		
		return "home";
	}
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}*/
	
}
