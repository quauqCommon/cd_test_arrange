package com.cd.arrange.web.service.auto;

import com.cd.arrange.web.model.auto.Group;

import java.util.List;

/**
 * Created by cd on 2017/4/1.
 */
public interface GroupService {
    List<Group> findList(Group group);
    Group findById(int id);
    int insert(Group group);
    int delete(int id);
    int update(Group group);
    List<Group> findListByUserId(int userId);
    int findCount(Group group);
}
