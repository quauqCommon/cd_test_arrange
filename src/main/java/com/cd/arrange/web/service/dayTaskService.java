package com.cd.arrange.web.service;

import java.util.List;

import com.cd.arrange.web.model.dayTask;


public interface dayTaskService  {
    List<dayTask> finddayTaskList(dayTask daytask);
    int finddayTaskCount(dayTask daytask);
}
