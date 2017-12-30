package com.doco.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doco.domain.Request;
import com.doco.mappers.AttachMapper;
import com.doco.mappers.RequestMapper;

import lombok.extern.java.Log;

@Log
@Service
public class RequestServiceImpl implements RequestService {

	@Autowired
	private RequestMapper mapper;
	
	@Autowired
	private AttachMapper attachmapper;
	
	@Override
	public void register(Request request) {
		log.info("register");
		mapper.create(request);
	}
	
	@Override
	@Transactional
	public void register(Request request, String[] files) {
		mapper.create(request);
	for(int i  = 0; i < files.length; i++) {
		attachmapper.addAttach(1L, files[i]);
	   }
	}

	@Override
	public Request get(Integer no) {
		log.info("get");
		return mapper.read(no);
	}

	@Override
	public void modify(Request request) {
		log.info("modify");
	}

	@Override
	public void remove(Integer no) {
		log.info("remove");		
		mapper.delete(no);
	}

	@Override
	public List<Request> listAll() {
		return mapper.listAll();
	}


//	@Override
//	public List<Request> getList(Criteria cri) {
//		
//		return mapper.getList2(cri);
//	}
//
//	@Override
//	public int getListCount(Criteria cri) {
//		
//		return mapper.getTotal(cri);
//	}



}
