package com.cd.arrange.web.service.auto;

import com.cd.arrange.web.model.auto.CaseScript;

import java.util.List;

/**
 * Created by cd on 2017/4/1.
 */
public interface CaseScriptService {
    List<CaseScript> findList(CaseScript caseScript);
    CaseScript findById(int id);
    int insert(CaseScript caseScript);
    int delete(int id);
    int update(CaseScript caseScript);
    List<CaseScript> findListByUserId(int userId);
    int findCount(CaseScript caseScript);
    int findMaxSort(int scriptId);
}
