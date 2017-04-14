package com.cd.arrange.web.service;

import java.util.List;

import com.cd.arrange.web.model.Task;


public interface TaskService  {
    List<Task> findTaskList(Task task);
    int findTaskCount(Task task);
}
