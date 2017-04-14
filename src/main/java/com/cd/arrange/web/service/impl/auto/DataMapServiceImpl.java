package com.cd.arrange.web.service.impl.auto;

import com.cd.arrange.web.dao.auto.DataMapDAO;
import com.cd.arrange.web.model.auto.DataMap;
import com.cd.arrange.web.service.auto.DataMapService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DataMapServiceImpl implements DataMapService {
	@Resource
	private DataMapDAO dataMapDao;
	@Override
	public List<DataMap> findList(DataMap dataMap) {
		return dataMapDao.findList(dataMap);
	}
	@Override
	public int findMaxSort(int scriptId){
		return dataMapDao.findMaxSort(scriptId);
	}
	@Override
	public DataMap findById(int id) {
		return dataMapDao.findById(id);
	}
	@Override
	public int insert(DataMap dataMap) {
		try {
			int i = dataMapDao.insert(dataMap);

			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int delete(int id) {
		try {
			int i = dataMapDao.delete(id);
			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int update(DataMap dataMap) {
		try {
			return dataMapDao.update(dataMap);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public List<DataMap> findListByUserId(int userId) {
		return dataMapDao.findListByUserId(userId);
	}
	@Override
	public int findCount(DataMap dataMap){
		return dataMapDao.findCount(dataMap);
	}


}
