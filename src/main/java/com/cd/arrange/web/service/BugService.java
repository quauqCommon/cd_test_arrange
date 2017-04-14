package com.cd.arrange.web.service;

import java.util.List;

import com.cd.arrange.web.model.Bug;


public interface BugService  {
    List<Bug> findBugList(Bug bug);
    int findBugCount(Bug bug);
}
