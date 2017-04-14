package com.cd.arrange.web.dao;

import java.util.List;

import com.cd.arrange.core.generic.GenericDao;
import com.cd.arrange.web.model.User;
import org.apache.ibatis.annotations.Param;

/**
 * 用户Dao接口
 * 
 * @author AutoTest
 * @since 2014年7月5日 上午11:49:57
 **/
public interface UserDAO extends GenericDao<User, Long> {

    int deleteByPrimaryKey(Long id);

    

    int insertSelective(User record);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    /**
     * 用户登录验证查询
     * 
     * @param record
     * @return
     */
    User authentication(@Param("record") User record);


    User findUserByName(String name);
    List<User> findUserList(User user);
    int findUserCount(User user);
    int insertUser(User user);
}