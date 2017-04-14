package com.cd.arrange.web.dao.auto;

import com.cd.arrange.web.model.auto.BaseCase;

import java.util.List;

public interface BaseCaseDAO {
	List<BaseCase> findList(BaseCase baseCase);
	BaseCase findById(int id);
	int insert(BaseCase baseCase);
	int delete(int id);
	int update(BaseCase baseCase);
	List<BaseCase> findListByUserId(int userId);
	int findCount(BaseCase baseCase);
}
