package edu.multi.mvc;

import org.springframework.stereotype.Repository;

@Repository("vo")
public class BoardVO {

	/*
		(SEQ NUMBER(5) PRIMARY KEY,
		TITLE VARCHAR2(100),
		CONTENTS VARCHAR2(4000),
		WRITER VARCHAR2(20),
		TIME DATE,
		PASSWORD NUMBER(5),
		VIEWCOUNT NUMBER(10)
	*/
	
	int seq;
	String title, contents, writer;
	String time;		// in DB // select to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS')
	int password, viewcount;
	
	@Override
	public String toString() {
		return "Board [seq=" + seq + ", title=" + title + ", contents=" + contents + ", writer=" + writer + ", date="
				+ time + ", viewcount=" + viewcount + "]";
	}
	// get / set
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	
}
