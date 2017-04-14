package com.cd.arrange.web.dao.auto;

import com.cd.arrange.web.model.auto.Script;

import java.util.List;

public interface ScriptDAO {
	List<Script> findList(Script script);
	Script findById(int id);
	int insert(Script script);
	int delete(int id);
	int update(Script script);
	List<Script> findListByUserId(int userId);
	int findCount(Script script);
}
