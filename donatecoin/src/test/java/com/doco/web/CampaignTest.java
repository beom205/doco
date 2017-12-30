package com.doco.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.doco.domain.Campaign;
//import com.doco.mappers.CampaignMapper;

import lombok.extern.java.Log;

@Log
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class CampaignTest {

//	@Inject
//	CampaignMapper cMapper;
//	
//	
//	@Test
//	public void testCreate() {
//		
//		Campaign c = new Campaign();
//		c.setTitle("캠페인 제목");
//		c.setContent("캠페인 내용");
//		c.setClat(1.111);
//		c.setClng(1.111);
//		c.setCvideo("c://file/video");
//		c.setCpicture("c://file/picture");
//		cMapper.register(c);
//	}
//	
//	@Test
//	public void testRead() {
//	}
}
