package com.doco.mappers;

import java.util.List;

import com.doco.domain.Request;

public interface RequestMapper extends CRUDMapper<Request,Integer> {
	
	public void create(Request requst); //등록 
	
	public Request read(Integer no); //조회
	
	public void update(Request request); // 수정
	
	public void delete(Integer no); // 삭제 
	
	public List<Request> listAll(); // 목록
		
	public int readRNO();
	
	
}
