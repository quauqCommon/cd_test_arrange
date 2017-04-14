package com.cd.arrange.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.cd.arrange.core.generic.GenericDao;
import com.cd.arrange.core.generic.GenericServiceImpl;
import com.cd.arrange.web.model.Role;
import org.springframework.stereotype.Service;

import com.cd.arrange.web.dao.RoleDAO;
import com.cd.arrange.web.service.RoleService;

/**
 * 角色Service实现类
 *
 * @author AutoTest
 * @since 2014年6月10日 下午4:16:33
 */
@Service
public class RoleServiceImpl extends GenericServiceImpl<Role, Long> implements RoleService {

    @Resource
    private RoleDAO roleDao;

    @Override
    public GenericDao<Role, Long> getDao() {
        return roleDao;
    }

    @Override
    public List<Role> selectRolesByUserId(int userId) {
        return roleDao.selectRolesByUserId(userId);
    }

	@Override
	public List<Role> findRoleList(Role role) {
		// TODO Auto-generated method stub
		return roleDao.findRoleList(role);
	}

	@Override
	public int findRoleCount(Role role) {
		// TODO Auto-generated method stub
		return roleDao.findRoleCount(role);
	}

}
