package com.cd.arrange.web.model;

import javax.servlet.http.HttpServletRequest;

public abstract class BaseModel {
	private int pageSize;
	private int pageStart;
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageStart() {
		return pageStart;
	}
	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}
	public void initPage(HttpServletRequest request){
		String sStart=request.getParameter("start");
		String sSize=request.getParameter("length");
		int pageStart=0;
		int pageSize=10000;
		if(sSize!=null){
			pageSize= Integer.valueOf(sSize);
		}
		if(sStart!=null){
			pageStart=Integer.valueOf(sStart);
		}
		this.setPageSize(pageSize);
		this.setPageStart(pageStart);
		
	}
}
