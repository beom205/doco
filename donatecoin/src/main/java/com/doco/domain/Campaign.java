package com.doco.domain;

import java.util.Date;


public class Campaign {
	
	private Integer bno, viewcnt;
	private String title, content, writer;
	private Date regdate;
	private String[] files;
	private String fullName;
	private String movieFile;
	private String periodStart;
	private String periodStop;
	
	public String getPeriodStart() {
		return periodStart;
	}
	public void setPeriodStart(String periodStart) {
		this.periodStart = periodStart;
	}
	public String getPeriodStop() {
		return periodStop;
	}
	public void setPeriodStop(String periodStop) {
		this.periodStop = periodStop;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getMovieFile() {
		return movieFile;
	}
	public void setMovieFile(String movieFile) {
		this.movieFile = movieFile;
	}
	public String[] getFiles() {
		return files;
	}
	public void setFiles(String[] files) {
		this.files = files;
	}
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	
} 
