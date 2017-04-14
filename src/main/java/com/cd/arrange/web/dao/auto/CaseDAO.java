package com.cd.arrange.web.dao.auto;

import java.util.List;

import com.cd.arrange.web.model.auto.Case;

public interface CaseDAO {
	List<Case> findList(Case c);
	Case findById(int id);
	int insert(Case executeCase);
	int delete(int id);
	int update(Case executeCase);
	List<Case> findListByUserId(int userId);
	int findCount(Case executeCase);
}
