package com.doco.service;

import javax.sql.DataSource;

import lombok.Setter;

@Setter
public class MemberService {
	
	private DataSource ds;
	
	
	
	public String test() {
		return "hello World";
	}
}
