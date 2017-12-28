package com.doco.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.java.Log;

@Log
@Controller
public class registerTestController {

	@GetMapping("/blog-detail")
	public void goBlog() {
		log.info("블로그 디테일 들어옴");
	}
}
