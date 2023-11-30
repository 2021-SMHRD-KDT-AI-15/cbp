package com.smhrd.model;

public class MemberDTO {
	
	private String email;
	private String pw;
	private String nick;
	private String q_date;
	private String s_date;
	private int price;
	private int s_daily;
	private String joinday;
	
	// 회원가입을 위한 생성자 메소드
	public MemberDTO(String email, String pw, String nick, String q_date, String s_date, int price,
			int s_daily, String joinday) {
		this.email = email;
		this.pw = pw;
		this.nick = nick;
		this.q_date = q_date;
		this.s_date = s_date;
		this.price = price;
		this.s_daily = s_daily;
		this.joinday = joinday;
	}
	
	// 로그인을 위한 생성자 메소드
	public MemberDTO(String email, String pw) {
		this.email = email;
		this.pw = pw;
	}
	
	public MemberDTO() {
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getQ_date() {
		return q_date;
	}

	public void setQ_date(String q_date) {
		this.q_date = q_date;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getS_daily() {
		return s_daily;
	}

	public void setS_daily(int s_daily) {
		this.s_daily = s_daily;
	}

	public String getJoinday() {
		return joinday;
	}

	public void setJoinday(String joinday) {
		this.joinday = joinday;
	}
	
}