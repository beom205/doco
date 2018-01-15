package com.doco.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.java.Log;

@Log
public class LoginInterceptor extends HandlerInterceptorAdapter{
	private static final String LOGIN = "login";

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute(LOGIN) != null) {
			log.info("clear login data before");
			session.removeAttribute(LOGIN);
		}
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HttpSession session = request.getSession();
		
		ModelMap modelMap = modelAndView.getModelMap();
		Object member = modelMap.get("member");
		
		if(member != null) {
			log.info("new login success");
			session.setAttribute(LOGIN, member);
			//response.sendRedirect("/");
			
			 Object dest = session.getAttribute("dest");
			 log.info("dest: "+dest);
			 String resultDest = dest != null?(String)dest:"/";
			 log.info("resultDest :   " + resultDest);
			 response.sendRedirect(resultDest);
			 return;
		}
		
		response.sendRedirect("/member/login");
		return;
	}

	
	
	
}
