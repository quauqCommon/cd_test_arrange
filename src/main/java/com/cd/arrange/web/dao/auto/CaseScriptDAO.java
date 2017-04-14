package com.cd.arrange.web.dao.auto;

import com.cd.arrange.web.model.auto.CaseScript;

import java.util.List;

public interface CaseScriptDAO {
	List<CaseScript> findList(CaseScript caseScript);
	CaseScript findById(int id);
	int insert(CaseScript caseScript);
	int delete(int id);
	int update(CaseScript caseScript);
	List<CaseScript> findListByUserId(int userId);
	int findCount(CaseScript caseScript);
	int findMaxSort(int scriptId);
}
