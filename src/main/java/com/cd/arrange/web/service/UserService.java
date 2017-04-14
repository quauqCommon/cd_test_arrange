package com.cd.arrange.web.service;

import java.util.List;

import com.cd.arrange.web.model.User;
import com.cd.arrange.core.generic.GenericService;
import com.cd.arrange.web.model.Task;

/**
 * 用户 业务 接口
 * 
 * @author AutoTest
 * @since 2014年7月5日 上午11:53:33
 **/
public interface UserService extends GenericService<User, Long> {

    /**
     * 用户验证
     * 
     * @param user
     * @return
     */
    User authentication(User user);

    User findUserByName(String name);
    List<User> findUserList(User user);
	List<Task> findTaskList(Task task);
    int findUserCount(User user);
    int insertUser(User user);

}
