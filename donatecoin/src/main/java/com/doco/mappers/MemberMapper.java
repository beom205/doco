package com.doco.mappers;

import com.doco.domain.Member;

public interface MemberMapper extends CRUDMapper<Member, Integer>{
	
	
	public String getTime();
	
	public Member login(Member member);
}
