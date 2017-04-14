package com.cd.arrange.web.model.auto;

import com.cd.arrange.web.model.BaseModel;

import java.util.Date;

public class Script   extends BaseModel {
	private int id;
	private String name;
	private String content;
	private String comment;
	private int category;
	private int selfCategory;
	private int returnCategory;
	private int projectId;
	private String projectName;
	private int groupId;
	private String groupName;
	private int insertUser;
	private String insertUserName;
	private int updateUser;
	private String updateUserName;
	private Date insertTime;
	private Date updateTime;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getInsertUser() {
		return insertUser;
	}
	public void setInsertUser(int insertUser) {
		this.insertUser = insertUser;
	}
	public int getUpdateUser() {
		return updateUser;
	}
	public void setUpdateUser(int updateUser) {
		this.updateUser = updateUser;
	}
	public Date getInsertTime() {
		return insertTime;
	}
	public void setInsertTime(Date insertTime) {
		this.insertTime = insertTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getSelfCategory() {
		return selfCategory;
	}
	public void setSelfCategory(int selfCategory) {
		this.selfCategory = selfCategory;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getInsertUserName() {
		return insertUserName;
	}
	public void setInsertUserName(String insertUserName) {
		this.insertUserName = insertUserName;
	}
	public String getUpdateUserName() {
		return updateUserName;
	}
	public void setUpdateUserName(String updateUserName) {
		this.updateUserName = updateUserName;
	}
	public int getReturnCategory() {
		return returnCategory;
	}
	public void setReturnCategory(int returnCategory) {
		this.returnCategory = returnCategory;
	}
	public int getGroupId() {
		return groupId;
	}
	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	
}
