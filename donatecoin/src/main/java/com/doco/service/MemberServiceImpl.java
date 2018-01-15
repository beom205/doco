package com.doco.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doco.domain.Member;
import com.doco.mappers.MemberMapper;

import lombok.extern.java.Log;

@Log
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mMapper;

	
	
	@Override
	public Member login(Member member) {
		return mMapper.login(member);
	}



	@Override
	public void register(Member member) {
		mMapper.create(member);
	}



	@Override
	public String idCheck(String id) {
		log.info("id : " + id);
		String result = mMapper.idCheck(id);
		
		log.info("result : " + result);
		if(result.equals(id)) {
			log.info("service result : "+result);
			return result;
		}
		return null;
	}
	
}
