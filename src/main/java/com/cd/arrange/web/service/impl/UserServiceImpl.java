package com.cd.arrange.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cd.arrange.core.generic.GenericDao;
import com.cd.arrange.core.generic.GenericServiceImpl;
import com.cd.arrange.web.dao.UserDAO;
import com.cd.arrange.web.model.Task;
import com.cd.arrange.web.model.User;
import com.cd.arrange.web.service.UserService;

/**
 * 用户Service实现类
 *
 * @author AutoTest
 * @since 2014年7月5日 上午11:54:24
 */
@Service
public class UserServiceImpl extends GenericServiceImpl<User, Long> implements UserService {

    @Resource
    private UserDAO userDAO;

    @Override
    public int insert(User model) {
        return userDAO.insertSelective(model);
    }

    @Override
    public int update(User model) {
        return userDAO.updateByPrimaryKeySelective(model);
    }

    @Override
    public int delete(Long id) {
        return userDAO.deleteByPrimaryKey(id);
    }

    @Override
    public User authentication(User user) {
        return userDAO.authentication(user);
    }

    @Override
    public User selectById(Long id) {
        return userDAO.selectByPrimaryKey(id);
    }

    @Override
    public GenericDao<User, Long> getDao() {
        return userDAO;
    }

    public List<User> findUserList(User user){
    	return userDAO.findUserList(user);
    }

	@Override
	public User findUserByName(String name) {
		// TODO Auto-generated method stub
		return userDAO.findUserByName(name);
	}


	@Override
	public List<Task> findTaskList(Task task) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int findUserCount(User user) {
		// TODO Auto-generated method stub
		return userDAO.findUserCount(user);
	}

	@Override
	public int insertUser(User user) {
		return userDAO.insertUser(user);
	}

}
