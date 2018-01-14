package com.doco.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.doco.domain.Campaign;
import com.doco.domain.Criteria;

import lombok.extern.java.Log;

@Log
@Repository
public class CampaignDAOImpl implements CampaignDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.doco.mapper.CampaignMapper";

	@Override
	public void create(Campaign vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public Campaign read(Integer bno) throws Exception {
		log.info("read DAOIMPL");
		return session.selectOne(namespace + ".read", bno);
	}

	@Override
	public void update(Campaign vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace + ".delete", bno);
	}

	@Override
	public List<Campaign> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<Campaign> listPage(int page) throws Exception {

		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<Campaign> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public void addAttach(String fullName) throws Exception {
		session.insert(namespace + ".addAttach", fullName);
	}
	
	@Override
	public void addMovie(String fullName) throws Exception {
		session.insert(namespace + ".addMovie", fullName);
	}
	
	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		return session.selectList(namespace + ".getAttach", bno);
	}
	
	@Override
	public List<String> getMovie(Integer bno) throws Exception {
		return session.selectList(namespace + ".getMovie", bno);
	}

	@Override
	public void deleteAttach(Integer bno) throws Exception {
		session.delete(namespace + ".deleteAttach", bno);
	}
	@Override
	public void deleteAttach2(Integer bno) throws Exception {
		session.delete(namespace + ".deleteAttach2", bno);
		
	}

	@Override
	public void replaceAttach(String fullName, Integer bno) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("bno", bno);
		paramMap.put("fullName", fullName);

		session.insert(namespace + ".replaceAttach", paramMap);

	}
}
