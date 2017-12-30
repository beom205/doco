package com.doco.domain;

import java.util.Date;


public class Campaign {
	
	private Integer bno, viewcnt;
	private String title, content, writer, cvideo, cpicture;
	private double clat, clng; //rlat : 위도 ,  rlng : 경도
	private Date start_date, end_date, reg_date;
	
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public Integer getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(Integer viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCvideo() {
		return cvideo;
	}
	public void setCvideo(String cvideo) {
		this.cvideo = cvideo;
	}
	public String getCpicture() {
		return cpicture;
	}
	public void setCpicture(String cpicture) {
		this.cpicture = cpicture;
	}
	public double getClat() {
		return clat;
	}
	public void setClat(double clat) {
		this.clat = clat;
	}
	public double getClng() {
		return clng;
	}
	public void setClng(double clng) {
		this.clng = clng;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
} 
