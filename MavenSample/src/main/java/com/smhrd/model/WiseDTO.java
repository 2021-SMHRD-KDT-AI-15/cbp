package com.smhrd.model;

public class WiseDTO {

	private int w_num;
	private String wise; // 명언
	
	public WiseDTO(int w_num, String wise) {
		this.w_num = w_num;
		this.wise = wise;
	}
	
	public WiseDTO() {
		
	}

	public int getW_num() {
		return w_num;
	}

	public void setW_num(int w_num) {
		this.w_num = w_num;
	}

	public String getWise() {
		return wise;
	}

	public void setWise(String wise) {
		this.wise = wise;
	}
	
	
}
