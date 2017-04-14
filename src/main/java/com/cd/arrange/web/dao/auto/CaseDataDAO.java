package com.cd.arrange.web.dao.auto;

import com.cd.arrange.web.model.auto.CaseData;

import java.util.List;

public interface CaseDataDAO {
	List<CaseData> findList(CaseData caseData);
	CaseData findById(int id);
	int insert(CaseData caseData);
	int delete(int id);
	int update(CaseData caseData);
	List<CaseData> findListByUserId(int userId);
	int findCount(CaseData caseData);
}
