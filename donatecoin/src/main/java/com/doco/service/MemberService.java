package com.doco.service;

import com.doco.domain.Member;


public interface MemberService {
	public Member login(Member member);
	
	public void register(Member member);
	
	public String idCheck(String id);
}
