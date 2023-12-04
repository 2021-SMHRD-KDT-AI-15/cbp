package com.smhrd.model;

public class WiseDTO {

	private int W_NUM;
	private String WISE; // 명언
	
	public WiseDTO(int W_NUM, String WISE) {
		this.W_NUM = W_NUM;
		this.WISE = WISE;
	}
	
	public WiseDTO() {
		
	}

	public int getW_NUM() {
		return W_NUM;
	}

	public void setW_NUM(int W_NUM) {
		this.W_NUM = W_NUM;
	}

	public String getWISE() {
		return WISE;
	}

	public void setWISE(String WISE) {
		this.WISE = WISE;
	}
	
	
}
