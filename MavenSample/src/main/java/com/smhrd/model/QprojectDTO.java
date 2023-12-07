package com.smhrd.model;

public class QprojectDTO {

	private String email; //사용자 이메일
	private int p_day; //수행 일수
	private String p_start; // 금연계획 시작일
	private String p_end; // 금연계획 종료일
	private int p_count; // 금연 계획 회차
	
	//금연 계획에 입력되어야 할 것들
	public QprojectDTO(String email, int p_day, String p_start, String p_end, int p_count) {
		this.email = email;
		this.p_day = p_day;
		this.p_start = p_start;
		this.p_end = p_end;
		this.p_count = p_count;
	}
	
	public QprojectDTO(String email) {
		this.email = email;
	}
	public QprojectDTO(String email, String p_start) {
		this.email = email;
		this.p_start = p_start;
	}
//	public QprojectDTO(String email, int today_s) {
//		
//		this.email = email;
//		this.today_s = today_s;
//	}

	public QprojectDTO() {
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getP_day() {
		return p_day;
	}

	public void setP_day(int p_day) {
		this.p_day = p_day;
	}

	public String getP_start() {
		return p_start;
	}

	public void setP_start(String p_start) {
		this.p_start = p_start;
	}

	public String getP_end() {
		return p_end;
	}

	public void setP_end(String p_end) {
		this.p_end = p_end;
	}

	public int getP_count() {
		return p_count;
	}

	public void setP_count(int p_count) {
		this.p_count = p_count;
	}
	
}
