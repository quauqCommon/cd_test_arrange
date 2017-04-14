package com.cd.arrange.web.service.auto;

import com.cd.arrange.web.model.auto.CaseData;

import java.util.List;

/**
 * Created by cd on 2017/4/1.
 */
public interface CaseDataService {
    List<CaseData> findList(CaseData caseData);
    CaseData findById(int id);
    int insert(CaseData caseData);
    int delete(int id);
    int update(String jsonStr);
    List<CaseData> findListByUserId(int userId);
    int findCount(CaseData caseData);
}
