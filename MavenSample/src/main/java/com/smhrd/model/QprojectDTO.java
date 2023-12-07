package com.smhrd.model;

public class QprojectDTO {

	private String email; //사용자 이메일
	private int s_day; //실패 일수
	private int p_day; //수행 일수
	private int today_s; //당일 흡연 횟수
	private String p_start; // 금연계획 시작일
	private String p_end; // 금연계획 종료일
	private int p_count; // 금연 계획 회차
	
	//금연 계획에 입력되어야 할 것들
	public QprojectDTO(String email, int s_day, int p_day, int today_s, String p_start, String p_end, int p_count) {
		this.email = email;
		this.s_day = s_day;
		this.p_day = p_day;
		this.today_s = today_s;
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
	public QprojectDTO(String email, int today_s) {
		
		this.email = email;
		this.today_s = today_s;
	}

	public QprojectDTO() {
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getS_day() {
		return s_day;
	}

	public void setS_day(int s_day) {
		this.s_day = s_day;
	}

	public int getP_day() {
		return p_day;
	}

	public void setP_day(int p_day) {
		this.p_day = p_day;
	}

	public int getToday_s() {
		return today_s;
	}

	public void setToday_s(int today_s) {
		this.today_s = today_s;
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
