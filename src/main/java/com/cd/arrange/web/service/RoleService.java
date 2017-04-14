package com.cd.arrange.web.service;

import java.util.List;

import com.cd.arrange.web.model.Role;
import com.cd.arrange.core.generic.GenericService;

/**
 * 角色 业务接口
 * 
 * @author AutoTest
 * @since 2014年6月10日 下午4:15:01
 **/
public interface RoleService extends GenericService<Role, Long> {
    /**
     * 通过用户id 查询用户 拥有的角色
     * 
     * @param userId
     * @return
     */
    List<Role> selectRolesByUserId(int userId);
    List<Role> findRoleList(Role role);
    int findRoleCount(Role role);
}
