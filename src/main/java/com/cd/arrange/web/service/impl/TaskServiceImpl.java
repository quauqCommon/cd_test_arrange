package com.cd.arrange.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.cd.arrange.web.service.TaskService;
import org.springframework.stereotype.Service;

import com.cd.arrange.web.dao.TaskDAO;
import com.cd.arrange.web.model.Task;

/**
 * 用户Service实现类
 *
 * @author AutoTest
 * @since 2014年7月5日 上午11:54:24
 */
@Service
public class TaskServiceImpl implements TaskService {
    @Resource
    private TaskDAO taskDAO;

	@Override
	public List<Task> findTaskList(Task task) {
		// TODO Auto-generated method stub
		return taskDAO.findTaskList(task);
	}

	@Override
	public int findTaskCount(Task task) {
		// TODO Auto-generated method stub
		return taskDAO.findTaskCount(task);
	}



    
    
}
