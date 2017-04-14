package com.cd.arrange.web.service.auto;

import com.cd.arrange.web.model.auto.Script;

import java.util.List;

/**
 * Created by cd on 2017/4/1.
 */
public interface ScriptService {
    List<Script> findList(Script script);
    Script findById(int id);
    int insert(Script script);
    int delete(int id);
    int update(Script script);
    List<Script> findListByUserId(int userId);
    int findCount(Script script);
}
