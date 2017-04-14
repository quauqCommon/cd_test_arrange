package com.cd.arrange.web.dao.auto;

import com.cd.arrange.web.model.auto.Group;

import java.util.List;

public interface GroupDAO {
	List<Group> findList(Group group);
	Group findById(int id);
	int insert(Group group);
	int delete(int id);
	int update(Group group);
	List<Group> findListByUserId(int userId);
	int findCount(Group group);
}
