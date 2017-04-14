package com.cd.arrange.web.dao.operation;

import com.cd.arrange.web.model.operation.Computer;

import java.util.List;

/**
 * BugDao接口
 * 
 * @author AutoTest
 * @since 2014年7月5日 上午11:49:57
 **/
public interface ComputerDAO{
    List<Computer> findList(Computer computer);
    int findCount(Computer computer);
    int insert(Computer computer);
    int delete(int id);
}