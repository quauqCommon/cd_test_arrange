package com.cd.arrange.web.dao.auto;

import com.cd.arrange.web.model.auto.DataMap;

import java.util.List;

public interface DataMapDAO {
	List<DataMap> findList(DataMap dataMap);
	DataMap findById(int id);
	int insert(DataMap dataMap);
	int delete(int id);
	int update(DataMap dataMap);
	List<DataMap> findListByUserId(int userId);
	int findCount(DataMap dataMap);
	int findMaxSort(int scriptId);
}
