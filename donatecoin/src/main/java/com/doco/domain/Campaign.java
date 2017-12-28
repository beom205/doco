package com.doco.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Campaign {
	
	private int cno;
	private String title, content, cvideo, cpicture;
	private double clat, clng; //rlat : 위도 ,  rlng : 경도
	private Date start_date, end_date, reg_date;
} 
