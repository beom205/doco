package com.doco.service;

import java.util.List;
import javax.inject.Inject;
import com.doco.domain.Campaign;
import com.doco.domain.Criteria;
import com.doco.persistence.CampaignDAO;

import lombok.extern.java.Log;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Log
@Service
public class CampaignServiceImpl implements CampaignService{
	
	@Inject
	private CampaignDAO dao;

	@Transactional
	@Override
	public void register(Campaign board) throws Exception {
		
		
		dao.create(board);
		
		String[] files = board.getFiles();
		
		if(files == null) { return; }
		
		for(String fileName : files) {
			dao.addAttach(fileName);
		}
		
		if(board.getMovieFile() != null) {
			dao.addMovie(board.getMovieFile());
		}
		
	}
	
	@Override
	public Campaign read(Integer bno) throws Exception {
		return dao.read(bno);
	}

	@Transactional
	  @Override
	  public void modify(Campaign board) throws Exception {
	    dao.update(board);
	    
	    Integer bno = board.getBno();
	    
	    dao.deleteAttach(bno);
	    
	    String[] files = board.getFiles();
	    
	    if(files == null) { return; } 
	    
	    for (String fileName : files) {
	      dao.replaceAttach(fileName, bno);
	    }
	  }

	@Transactional
	  @Override
	  public void remove(Integer bno) throws Exception {
	    dao.deleteAttach(bno);
	    dao.deleteAttach2(bno);
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

	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		return dao.getAttach(bno);
	}
	
	@Override
	public List<String> getMoive(Integer bno) throws Exception {
		return dao.getMovie(bno);
	}

}