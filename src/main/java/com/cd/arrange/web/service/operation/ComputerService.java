package com.cd.arrange.web.service.operation;

import com.cd.arrange.web.model.operation.Computer;

import java.util.List;


public interface ComputerService{
    List<Computer> findList(Computer computer);
    int findCount(Computer computer);
    int insert(Computer computer);
    int delete(int id);
}
