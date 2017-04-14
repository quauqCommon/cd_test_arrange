package com.cd.arrange.web.dao;

import java.util.List;

import com.cd.arrange.core.generic.GenericDao;
import com.cd.arrange.web.model.Task;

import com.cd.arrange.web.model.User;

/**
 * 用户Dao接口
 * 
 * @author AutoTest
 * @since 2014年7月5日 上午11:49:57
 **/
public interface TaskDAO extends GenericDao<User, Long> {

    List<Task> findTaskList(Task task);
    int findTaskCount(Task task);
}