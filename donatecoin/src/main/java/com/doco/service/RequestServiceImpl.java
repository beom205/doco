package com.doco.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doco.domain.Photo;
import com.doco.domain.Request;
import com.doco.mappers.PhotoMapper;
import com.doco.mappers.RequestMapper;

import lombok.extern.java.Log;

@Log
@Service
public class RequestServiceImpl implements RequestService {

	@Autowired
	private RequestMapper mapper; 
	
	@Autowired
	private PhotoMapper pMapper;
	
	@Override
	@Transactional
	public int regist(Request request,Photo photo) {
		log.info("register");
		mapper.create(request);
		int pno = mapper.readRNO();
		photo.setNo(pno);
		log.info("아아아아이럼안됨 ");
		if(photo != null) {
			log.info("dddd"+photo);
			pMapper.registPhoto(photo);
		}
			return pno;
		}

 	@Override
	public Request read(Integer no) {
 		return mapper.read(no);
	
 	}
	
	@Override
	@Transactional
	public void modify(Request request,Photo photo) {
		mapper.update(request);
		pMapper.modiPhoto(photo);
	}

	@Override
	public void remove(Integer no) {
		mapper.delete(no);
	}
	
	@Override
	public List<Request> listAll() {
		return mapper.listAll();
	}

	@Override
	public Photo getPhoto(Integer no) {
		return pMapper.readPhoto(no);
	}

}
