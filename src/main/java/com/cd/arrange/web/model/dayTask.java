package com.cd.arrange.web.model;

public class dayTask extends BaseModel{
	private Long id;
    private String week;
    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	private String Content;
	


    
    
}
