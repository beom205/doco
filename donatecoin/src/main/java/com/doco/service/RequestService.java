package com.doco.service;

import java.util.List;

import com.doco.domain.Photo;
import com.doco.domain.Request;

public interface RequestService {
	
	public int regist(Request request,Photo photo); //등록 
	
	public Request read(Integer no); //조회
	
	public void modify(Request request,Photo photo); // 수정
	
	public void remove(Integer no); // 삭제 
	
	public List<Request> listAll(); // 목록
	
	public Photo getPhoto(Integer no); //사진조회

}
