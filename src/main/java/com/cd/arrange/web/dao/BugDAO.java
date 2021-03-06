package com.cd.arrange.web.dao;

import java.util.List;

import com.cd.arrange.core.generic.GenericDao;
import com.cd.arrange.web.model.Bug;

import com.cd.arrange.web.model.User;

/**
 * BugDao接口
 * 
 * @author AutoTest
 * @since 2014年7月5日 上午11:49:57
 **/
public interface BugDAO extends GenericDao<User, Long> {

    List<Bug> findBugList(Bug bug);
    int findBugCount(Bug bug);
}