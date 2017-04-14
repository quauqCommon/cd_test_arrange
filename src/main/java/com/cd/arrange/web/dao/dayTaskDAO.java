package com.cd.arrange.web.dao;

import java.util.List;

import com.cd.arrange.core.generic.GenericDao;

import com.cd.arrange.web.model.User;
import com.cd.arrange.web.model.dayTask;

/**
 * 用户Dao接口
 * 
 * @author AutoTest
 * @since 2014年7月5日 上午11:49:57
 **/
public interface dayTaskDAO extends GenericDao<User, Long> {

    List<dayTask> finddayTaskList(dayTask daytask);
    int finddayTaskCount(dayTask daytask);
}