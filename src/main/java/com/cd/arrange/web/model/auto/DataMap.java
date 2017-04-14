package com.cd.arrange.web.model.auto;

import com.cd.arrange.web.model.BaseModel;

public class DataMap extends BaseModel{
	private int id;
	private String name;
	private String dataMapKey;
	private int category;
	private int scriptId;
	private int sort;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDataMapkey() {
		return dataMapKey;
	}

	public void setDataMapkey(String dataMapKey) {
		this.dataMapKey = dataMapKey;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getScriptId() {
		return scriptId;
	}

	public void setScriptId(int scriptId) {
		this.scriptId = scriptId;
	}

	public int getSort() {
		return sort;
	}

	public void setSort(int sort) {
		this.sort = sort;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
