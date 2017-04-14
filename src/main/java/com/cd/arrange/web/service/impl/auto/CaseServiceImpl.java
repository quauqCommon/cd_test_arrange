package com.cd.arrange.web.service.impl.auto;

import java.util.List;

import com.cd.arrange.web.model.auto.Case;
import com.cd.arrange.web.dao.auto.CaseDAO;
import com.cd.arrange.web.service.auto.CaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class CaseServiceImpl implements CaseService{
	@Resource
	private CaseDAO caseDao;
	@Override
	public List<Case> findList(Case c) {
		return caseDao.findList(c);
	}
	@Override
	public Case findById(int id) {
		return caseDao.findById(id);
	}
	@Override
	public int insert(Case executeCase) {
		try {
			int i = caseDao.insert(executeCase);

			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int delete(int id) {
		try {
			int i = caseDao.delete(id);
			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int update(Case executeCase) {
		try {
			return caseDao.update(executeCase);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public List<Case> findListByUserId(int userId) {
		return caseDao.findListByUserId(userId);
	}
	@Override
	public int findCount(Case executeCase){
		return caseDao.findCount(executeCase);
	}


}
