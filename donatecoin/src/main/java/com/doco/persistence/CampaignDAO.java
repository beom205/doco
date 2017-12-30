package com.doco.persistence;

import java.util.List;

import com.doco.domain.Campaign;
import com.doco.domain.Criteria;


public interface CampaignDAO {
	
	public void create(Campaign vo)throws Exception;
	
	public Campaign read(Integer bno)throws Exception;
	
	public void update(Campaign vo)throws Exception;
	
	public void delete(Integer bno)throws Exception;
	
	public List<Campaign> listAll()throws Exception;
	
	public List<Campaign> listPage(int page)throws Exception;
	
	public List<Campaign> listCriteria(Criteria cri)throws Exception;
	
	public int countPaging(Criteria cri)throws Exception;
	
}