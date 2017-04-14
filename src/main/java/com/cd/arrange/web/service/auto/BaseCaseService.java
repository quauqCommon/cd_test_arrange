package com.cd.arrange.web.service.auto;

import com.cd.arrange.web.model.auto.BaseCase;

import java.util.List;

/**
 * Created by cd on 2017/4/1.
 */
public interface BaseCaseService {
    List<BaseCase> findList(BaseCase baseCase);
    BaseCase findById(int id);
    int insert(BaseCase baseCase);
    int delete(int id);
    int update(BaseCase baseCase);
    List<BaseCase> findListByUserId(int userId);
    int findCount(BaseCase baseCase);
}
