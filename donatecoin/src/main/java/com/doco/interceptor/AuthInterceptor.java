package com.doco.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.java.Log;

@Log
public class AuthInterceptor extends HandlerInterceptorAdapter{
	
	//사용자의 이전 URI와 query를 가져와서 체크 후 세션에 담아서 다시 보내줌
	private void saveDest(HttpServletRequest request) {
		
		String uri = request.getRequestURI();
		String query = request.getQueryString();
		
		if(query == null || query.equals("null")) {
			query = "";
		}else {
			query = "?" + query;
		}
		
		if(request.getMethod().equals("GET")) {
			log.info("dest: "+(uri + query));
			request.getSession().setAttribute("dest", uri+query);
		}
	}
	//세션에 login 변수를 확인해서 값이 없으면 login 페이지로 보냄
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
		HttpSession session = request.getSession();
		
		if(session.getAttribute("login") == null) {
			log.info("current user is not logined");
			
			//login page로 보낼 때 HttpSession에 'dest'라는 이름으로 원 사용자가 원하는 페이지의 정보를 저장한다.
			//Get 방식인 경우 URI뒤의 query 파라미터들도 함께 보관함
			saveDest(request);
			
			response.sendRedirect("/member/login");
			return false;
		}
		return true;
	}

}
