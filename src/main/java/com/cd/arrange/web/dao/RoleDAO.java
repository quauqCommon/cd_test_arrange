package com.cd.arrange.web.dao;

import java.util.List;

import com.cd.arrange.core.generic.GenericDao;
import com.cd.arrange.web.model.Role;
import com.cd.arrange.web.model.RoleExample;
import org.apache.ibatis.annotations.Param;

/**
 * 角色Dao 接口
 * 
 * @author AutoTest
 * @since 2014年7月5日 上午11:55:59
 **/
public interface RoleDAO extends GenericDao<Role, Long> {
    int countByExample(RoleExample example);

    int deleteByExample(RoleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Role record);

    int insertSelective(Role record);

    List<Role> selectByExample(RoleExample example);

    Role selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Role record, @Param("example") RoleExample example);

    int updateByExample(@Param("record") Role record, @Param("example") RoleExample example);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    /**
     * 通过用户id 查询用户 拥有的角色
     * 
     * @param id
     * @return
     */
    List<Role> selectRolesByUserId(int userId);
    List<Role> findRoleList(Role role);
    int findRoleCount(Role role);
}