package com.doco.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.doco.domain.Campaign;
import com.doco.domain.Criteria;

@Repository
public class CampaignDAOImpl implements CampaignDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	 = "com.doco.mapper.CampaignMapper";
	
	
	@Override
	public void create(Campaign vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public Campaign read(Integer bno) throws Exception {
		return session.selectOne(namespace+".read", bno);
	}

	@Override
	public void update(Campaign vo) throws Exception {
		session.update(namespace+".update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace+".delete", bno);
	}

	@Override
	public List<Campaign> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public List<Campaign> listPage(int page) throws Exception {
		
		if(page <= 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
		
		return session.selectList(namespace+".listPage", page);
	}

	@Override
	public List<Campaign> listCriteria(Criteria cri) throws Exception {
		
		return session.selectList(namespace+".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging", cri);
	}
 
}
