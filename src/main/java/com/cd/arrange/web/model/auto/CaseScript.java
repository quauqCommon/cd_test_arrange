package com.cd.arrange.web.model.auto;

import java.util.List;

import com.cd.arrange.web.model.BaseModel;

public class CaseScript extends BaseModel{
	private int id;
	private String name;
	private String comment;
	private int scriptId;
	private int baseCaseId;
	private int sort;
	private int userId;
	private int parentId;
	private List<CaseData> caseDataList;
	private List<DataMap> dataMapList;
	private List<CaseScript> childCasePageList;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public int getBaseCaseId() {
		return baseCaseId;
	}
	public void setBaseCaseId(int baseCaseId) {
		this.baseCaseId = baseCaseId;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public List<CaseData> getCaseDataList() {
		return caseDataList;
	}
	public void setCaseDataList(List<CaseData> caseDataList) {
		this.caseDataList = caseDataList;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public List<DataMap> getDataMapList() {
		return dataMapList;
	}
	public void setDataMapList(List<DataMap> dataMapList) {
		this.dataMapList = dataMapList;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public List<CaseScript> getChildCasePageList() {
		return childCasePageList;
	}
	public void setChildCasePageList(List<CaseScript> childCasePageList) {
		this.childCasePageList = childCasePageList;
	}

	public int getScriptId() {
		return scriptId;
	}

	public void setScriptId(int scriptId) {
		this.scriptId = scriptId;
	}
}
