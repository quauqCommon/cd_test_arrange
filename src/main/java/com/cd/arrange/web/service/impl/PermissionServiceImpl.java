package com.cd.arrange.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.cd.arrange.web.model.Permission;
import org.springframework.stereotype.Service;

import com.cd.arrange.core.generic.GenericDao;
import com.cd.arrange.core.generic.GenericServiceImpl;
import com.cd.arrange.web.dao.PermissionDAO;
import com.cd.arrange.web.service.PermissionService;

/**
 * 权限Service实现类
 *
 * @author AutoTest
 * @since 2014年6月10日 下午12:05:03
 */
@Service
public class PermissionServiceImpl extends GenericServiceImpl<Permission, Long> implements PermissionService {

    @Resource
    private PermissionDAO permissionDao;


    @Override
    public GenericDao<Permission, Long> getDao() {
        return permissionDao;
    }

    @Override
    public List<Permission> selectPermissionsByRoleId(Long roleId) {
        return permissionDao.selectPermissionsByRoleId(roleId);
    }
}
