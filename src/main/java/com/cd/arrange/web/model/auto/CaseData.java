package com.cd.arrange.web.model.auto;

import java.util.List;

public class CaseData {
	private int id;
	private String dataValue;
	private int dataMapId;
	private int caseScriptId;
	private int sort;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDataValue() {
		return dataValue;
	}
	public void setDataValue(String dataValue) {
		this.dataValue = dataValue;
	}
	public int getDataMapId() {
		return dataMapId;
	}
	public void setDataMapId(int dataMapId) {
		this.dataMapId = dataMapId;
	}
	
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public int getCaseScriptId() {
		return caseScriptId;
	}
	public void setCaseScriptId(int caseScriptId) {
		this.caseScriptId = caseScriptId;
	}
	
	
}
