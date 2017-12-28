package com.doco.interceptor;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SampleInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception{
		System.out.println("post handle....");
		
		Object result = modelAndView.getModel().get("result");
		System.out.println("result : " + result);
		if(result != null) {
			request.getSession().setAttribute("result", result);
			response.sendRedirect("/doA");
		}
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		System.out.println("pre handle......");
		
		//handler는 Object 객체로 현재 실행하려는 메소드 자체를 의미함
		HandlerMethod method = (HandlerMethod) handler;
		Method methodObj = method.getMethod();
		
		System.out.println("Bean:" + method.getBean());
		System.out.println("Method: " + methodObj);
		
		return true;
	}
}
