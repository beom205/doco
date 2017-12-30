package com.doco.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.doco.domain.Campaign;
import com.doco.persistence.CampaignDAO;

import lombok.extern.java.Log;

@Log
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class CampaignTest {

	@Inject
	private CampaignDAO dao;
	
	@Test
	public void testCreate() throws Exception {
		
		Campaign board = new Campaign();
		board.setTitle("새로운 글을 넣습니다. ");
		board.setContent("새로운 글을 넣습니다. ");
		board.setWriter("user00");
		dao.create(board);
	}
//	
//	@Test
//	public void testRead() {
//	}
}
