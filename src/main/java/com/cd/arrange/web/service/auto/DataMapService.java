package com.cd.arrange.web.service.auto;

import com.cd.arrange.web.model.auto.DataMap;

import java.util.List;

/**
 * Created by cd on 2017/4/1.
 */
public interface DataMapService {
    List<DataMap> findList(DataMap dataMap);
    DataMap findById(int id);
    int insert(DataMap dataMap);
    int delete(int id);
    int update(DataMap dataMap);
    List<DataMap> findListByUserId(int userId);
    int findCount(DataMap dataMap);
    int findMaxSort(int scriptId);
}
