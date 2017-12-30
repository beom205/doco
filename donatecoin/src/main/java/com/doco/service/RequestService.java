package com.doco.service;

import java.util.List;

import com.doco.domain.Request;

public interface RequestService {
	
	 public void register(Request request);
	 
	 public void register(Request request, String[] files);
	 
	 public Request get(Integer no);
	 
	 public void modify(Request request);
	 
	 public void remove(Integer no);

//	 public List<Request> getList(Criteria cri);
//	 
//	 public int getListCount(Criteria cri);
	 
	 public List<Request> listAll();

	

}
