package com.cd.arrange.web.service.impl.auto;

import com.cd.arrange.web.dao.auto.CaseDataDAO;
import com.cd.arrange.web.dao.auto.CaseScriptDAO;
import com.cd.arrange.web.dao.auto.DataMapDAO;
import com.cd.arrange.web.model.auto.CaseData;
import com.cd.arrange.web.model.auto.CaseScript;
import com.cd.arrange.web.model.auto.DataMap;
import com.cd.arrange.web.service.auto.CaseScriptService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CaseScriptServiceImpl implements CaseScriptService {
	@Resource
	private CaseScriptDAO caseScriptDao;
	@Resource 
	private DataMapDAO dataMapDao;
	@Resource
	private CaseDataDAO caseDataDao;
	@Override
	public List<CaseScript> findList(CaseScript caseScript) {
		return caseScriptDao.findList(caseScript);
	}
	@Override
	public int findMaxSort(int scriptId){
		return caseScriptDao.findMaxSort(scriptId);
	}
	@Override
	public CaseScript findById(int id) {
		return caseScriptDao.findById(id);
	}
	@Override
	public int insert(CaseScript caseScript) {
		try {
			int i = caseScriptDao.insert(caseScript);
			DataMap dataMap=new DataMap();
			dataMap.setScriptId(caseScript.getScriptId());
			List<DataMap> dataMapList=dataMapDao.findList(dataMap);
			for(DataMap dm : dataMapList) {
				CaseData caseData=new CaseData();
				caseData.setDataMapId(dm.getId());
				caseData.setCaseScriptId(caseScript.getId());
				caseData.setSort(dm.getSort());
				caseDataDao.insert(caseData);
			}
			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int delete(int id) {
		try {
			int i = caseScriptDao.delete(id);
			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int update(CaseScript caseScript) {
		try {
			return caseScriptDao.update(caseScript);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public List<CaseScript> findListByUserId(int userId) {
		return caseScriptDao.findListByUserId(userId);
	}
	@Override
	public int findCount(CaseScript caseScript){
		return caseScriptDao.findCount(caseScript);
	}


}
