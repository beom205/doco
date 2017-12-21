package com.doco.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doco.domain.Campaign;
import com.doco.service.CampaignService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/campaign/*")
public class CampaignController {
	
	@Autowired
	private CampaignService service;
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public void registerGET(Campaign vo, Model model) throws Exception {
		log.info("register get......");
	}
	
}
