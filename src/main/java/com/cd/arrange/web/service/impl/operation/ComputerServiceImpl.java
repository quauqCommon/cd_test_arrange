package com.cd.arrange.web.service.impl.operation;

import com.cd.arrange.web.dao.operation.ComputerDAO;
import com.cd.arrange.web.model.operation.Computer;
import com.cd.arrange.web.service.operation.ComputerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by cd on 2017/3/24.
 */
@Service
public class ComputerServiceImpl implements ComputerService{
    @Resource
    private ComputerDAO computerDAO;
    @Override
    public List<Computer> findList(Computer computer) {
        // TODO Auto-generated method stub
        return computerDAO.findList(computer);
    }
    @Override
    public int findCount(Computer computer) {
        // TODO Auto-generated method stub
        return computerDAO.findCount(computer);
    }
    @Override
    public int insert(Computer computer){
        return computerDAO.insert(computer);
    }
    @Override
    public int delete(int id){
        return computerDAO.delete(id);
    }
}
