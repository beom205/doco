package com.doco.service;

import java.util.List;


import com.doco.domain.Campaign;
import com.doco.domain.Criteria;

public interface CampaignService {
	
	public void register(Campaign board)throws Exception;
	
	public Campaign read(Integer bno)throws Exception;
	
	public void modify(Campaign board)throws Exception;
	
	public void remove(Integer bno)throws Exception;
	
	public List<Campaign> listAll()throws Exception;
	
	public List<Campaign> listCriteria(Criteria cri)throws Exception;
	
	public int listCountCriteria(Criteria cri)throws Exception;
	
	public List<String> getAttach(Integer bno)throws Exception;
	
	public List<String> getAttach2(Integer bno)throws Exception;
	
	public List<String> getMoive(Integer bno)throws Exception;
	
}
