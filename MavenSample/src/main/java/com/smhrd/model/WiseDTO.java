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

	public int getW_num() {
		return W_NUM;
	}

	public void setW_num(int W_NUM) {
		this.W_NUM = W_NUM;
	}

	public String getWise() {
		return WISE;
	}

	public void setWise(String WISE) {
		this.WISE = WISE;
	}
	
	
}
