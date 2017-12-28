package com.doco.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doco.domain.Campaign;
import com.doco.mappers.CampaignMapper;

@Service
public class CampaignServiceImpl implements CampaignService{
	
	@Autowired
	private CampaignMapper mapper;
	
	@Override
	public void register(Campaign vo) {
		mapper.register(vo);
	}

	@Override
	public Campaign read(Integer cno) {
		return mapper.read(cno);
	}

	@Override
	public void modify(Campaign vo) {
		
	}

	@Override
	public void remove(Integer cno) {
		
	}
	
	
}
