package com.cd.arrange.web.model;

public class Bug extends BaseModel{
	private Long id;
	private String bug_id;
	private String severity;
	private String priority;
	private String bug_title;
	private String creater;
	private String assign;
	private String solvers;
	private String solution;
	private String modify_date;
	private String status;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getBug_id() {
		return bug_id;
	}
	public void setBug_id(String bug_id) {
		this.bug_id = bug_id;
	}
	public String getSeverity() {
		return severity;
	}
	public void setSeverity(String severity) {
		this.severity = severity;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getBug_title() {
		return bug_title;
	}
	public void setBug_title(String bug_title) {
		this.bug_title = bug_title;
	}
	public String getCreater() {
		return creater;
	}
	public void setCreater(String creater) {
		this.creater = creater;
	}
	public String getAssign() {
		return assign;
	}
	public void setAssign(String assign) {
		this.assign = assign;
	}
	public String getSolvers() {
		return solvers;
	}
	public void setSolvers(String solvers) {
		this.solvers = solvers;
	}
	public String getSolution() {
		return solution;
	}
	public void setSolution(String solution) {
		this.solution = solution;
	}
	public String getModify_date() {
		return modify_date;
	}
	public void setModify_date(String modify_date) {
		this.modify_date = modify_date;
	}

	


    
    
}
