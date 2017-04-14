package com.cd.arrange.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.cd.arrange.web.model.Bug;
import org.springframework.stereotype.Service;

import com.cd.arrange.web.dao.BugDAO;
import com.cd.arrange.web.service.BugService;

/**
 * 用户Service实现类
 *
 * @author AutoTest
 * @since 2014年7月5日 上午11:54:24
 */
@Service
public class BugServiceImpl implements BugService {
    @Resource
    private BugDAO bugDAO;

	@Override
	public List<Bug> findBugList(Bug bug) {
		// TODO Auto-generated method stub
		return bugDAO.findBugList(bug);
	}

	@Override
	public int findBugCount(Bug bug) {
		// TODO Auto-generated method stub
		return bugDAO.findBugCount(bug);
	}



    
    
}
