package com.doco.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.doco.domain.Campaign;

public interface CampaignMapper extends CRUDMapper<Campaign, Integer>{
	
	@Insert("insert into dtb_campaign (cno, title, content, clat, clng, cvideo, cpicture, start_date, end_date, reg_date) "
			+ "values (#{cno}, #{title}, #{content}, #{clat}, #{clng}, #{cvideo}, #{cpicture}, #{start_date}, #{end_date}, #{reg_date})")
	public void register(Campaign c);
	

}
