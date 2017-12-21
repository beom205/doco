package com.doco.web;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.doco.domain.Campaign;
import com.doco.mappers.CampaignMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class CampaignTest {

	@Inject
	DataSource ds;
	
	@Inject
	CampaignMapper cMapper;
	
	@Test
	public void testCreate() throws Exception {
		
		Campaign c = new Campaign();
		c.setCno(1);
		c.setTitle("캠페인 제목");
		c.setContent("캠페인 내용");
		c.setRlat(1.111);
		c.setRlng(1.111);
		c.setCvideo("c://file/video");
		c.setCpicture("c://file/picture");
		cMapper.register(c);
	}
}
