package com.cd.arrange.web.service.impl.auto;

import com.cd.arrange.web.dao.auto.ScriptDAO;
import com.cd.arrange.web.model.auto.Script;
import com.cd.arrange.web.service.auto.ScriptService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ScriptServiceImpl implements ScriptService {
	@Resource
	private ScriptDAO projectDao;
	@Override
	public List<Script> findList(Script script) {
		return projectDao.findList(script);
	}
	@Override
	public Script findById(int id) {
		return projectDao.findById(id);
	}
	@Override
	public int insert(Script script) {
		try {
			int i = projectDao.insert(script);

			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int delete(int id) {
		try {
			int i = projectDao.delete(id);
			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int update(Script script) {
		try {
			return projectDao.update(script);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public List<Script> findListByUserId(int userId) {
		return projectDao.findListByUserId(userId);
	}
	@Override
	public int findCount(Script script){
		return projectDao.findCount(script);
	}


}
