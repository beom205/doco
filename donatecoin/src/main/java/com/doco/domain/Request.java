package com.doco.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Request {

	private int no;
	private String id, periodStart,periodStop,password,title,content,address;
	private String reg_date;
	
}
