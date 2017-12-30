package com.doco.domain;

import lombok.Data;

@Data
public class Request {

	private int no;
	private String title,content,address;
//	private String id, period,password,title,content,comments,address,progress;
//	private double lat, lng;
//	private Date reg_date;
//	
	private String[] files;
	
	
	

}
