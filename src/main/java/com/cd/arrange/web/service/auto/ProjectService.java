package com.cd.arrange.web.service.auto;

import com.cd.arrange.web.model.auto.Project;

import java.util.List;

/**
 * Created by cd on 2017/4/1.
 */
public interface ProjectService {
    List<Project> findList(Project project);
    Project findById(int id);
    int insert(Project project);
    int delete(int id);
    int update(Project project);
    List<Project> findListByUserId(int userId);
    int findCount(Project project);
}
