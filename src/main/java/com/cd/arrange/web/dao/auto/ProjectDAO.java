package com.cd.arrange.web.dao.auto;

import com.cd.arrange.web.model.auto.Project;

import java.util.List;

public interface ProjectDAO {
	List<Project> findList(Project project);
	Project findById(int id);
	int insert(Project project);
	int delete(int id);
	int update(Project project);
	List<Project> findListByUserId(int userId);
	int findCount(Project project);
}
