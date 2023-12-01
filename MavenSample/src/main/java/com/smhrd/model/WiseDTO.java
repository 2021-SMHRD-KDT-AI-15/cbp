package com.smhrd.model;

public class WiseDTO {

	private String WISE; // 명언
	private String content;
	
	public WiseDTO(String WISE) {
		this.WISE = WISE;
	}

	public String getWISE() {
		return WISE;
	}

	public void setWISE(String WISE) {
		this.WISE = WISE;
	}
	
	  public String getContent() {
	        return content;
	    }

	    public void setContent(String content) {
	        this.content = content;
	    }
	
}
