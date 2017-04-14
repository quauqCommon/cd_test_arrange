package com.cd.arrange.web.service.auto;

import com.cd.arrange.web.model.auto.Case;

import java.util.List;

/**
 * Created by cd on 2017/4/1.
 */
public interface CaseService {
    List<Case> findList(Case c);
    Case findById(int id);
    int insert(Case executeCase);
    int delete(int id);
    int update(Case executeCase);
    List<Case> findListByUserId(int userId);
    int findCount(Case executeCase);
}
