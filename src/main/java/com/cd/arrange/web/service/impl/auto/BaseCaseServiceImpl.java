package com.cd.arrange.web.service.impl.auto;

import com.cd.arrange.web.service.auto.BaseCaseService;
import com.cd.arrange.web.dao.auto.BaseCaseDAO;
import com.cd.arrange.web.model.auto.BaseCase;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BaseCaseServiceImpl implements BaseCaseService {
	@Resource
	private BaseCaseDAO baseCaseDao;
	@Override
	public List<BaseCase> findList(BaseCase c) {
		return baseCaseDao.findList(c);
	}
	@Override
	public BaseCase findById(int id) {
		return baseCaseDao.findById(id);
	}
	@Override
	public int insert(BaseCase executeBaseCase) {
		try {
			int i = baseCaseDao.insert(executeBaseCase);

			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int delete(int id) {
		try {
			int i = baseCaseDao.delete(id);
			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int update(BaseCase executeBaseCase) {
		try {
			return baseCaseDao.update(executeBaseCase);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public List<BaseCase> findListByUserId(int userId) {
		return baseCaseDao.findListByUserId(userId);
	}
	@Override
	public int findCount(BaseCase executeBaseCase){
		return baseCaseDao.findCount(executeBaseCase);
	}


}
