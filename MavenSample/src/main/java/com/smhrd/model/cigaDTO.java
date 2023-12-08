package com.smhrd.model;

public class cigaDTO {
	
	private String email;
	private String that_day;
	private int today_s;
	
	public cigaDTO(String email, String that_day, int today_s) {
		this.email = email;
		this.that_day = that_day;
		this.today_s = today_s;
	}
	
	public cigaDTO(String email) {
		this.email = email;
	}
	
	public cigaDTO() {
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getThat_day() {
		return that_day;
	}
	public void setThat_day(String that_day) {
		this.that_day = that_day;
	}
	public int getToday_s() {
		return today_s;
	}
	public void setToday_s(int today_s) {
		this.today_s = today_s;
	}
	
}
