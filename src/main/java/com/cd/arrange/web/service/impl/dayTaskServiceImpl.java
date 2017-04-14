package com.cd.arrange.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cd.arrange.web.dao.dayTaskDAO;
import com.cd.arrange.web.model.dayTask;
import com.cd.arrange.web.service.dayTaskService;

/**
 * 用户Service实现类
 *
 * @author AutoTest
 * @since 2014年7月5日 上午11:54:24
 */
@Service
public class dayTaskServiceImpl implements dayTaskService {
    @Resource
    private dayTaskDAO dayTaskDAO;

	@Override
	public List<dayTask> finddayTaskList(dayTask daytask) {
		// TODO Auto-generated method stub
		return dayTaskDAO.finddayTaskList(daytask);
	}

	@Override
	public int finddayTaskCount(dayTask daytask) {
		// TODO Auto-generated method stub
		return dayTaskDAO.finddayTaskCount(daytask);
	}





    
    
}
