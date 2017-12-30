package com.doco.service;

import java.util.List;
import javax.inject.Inject;
import com.doco.domain.Campaign;
import com.doco.domain.Criteria;
import com.doco.persistence.CampaignDAO;
import org.springframework.stereotype.Service;

@Service
public class CampaignServiceImpl implements CampaignService{
	
	@Inject
	private CampaignDAO dao;

	@Override
	public void register(Campaign board) throws Exception {
		dao.create(board);
	}

	@Override
	public Campaign read(Integer bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void modify(Campaign board) throws Exception {
		dao.update(board);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		dao.delete(bno);
	}

	@Override
	public List<Campaign> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<Campaign> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}
}
