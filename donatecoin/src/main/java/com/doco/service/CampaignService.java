package com.doco.service;

import com.doco.domain.Campaign;

public interface CampaignService {
	
	public void register(Campaign vo);
	
	public Campaign read(Integer cno);
	
	public void modify(Campaign vo);
	
	public void remove(Integer cno);
}
