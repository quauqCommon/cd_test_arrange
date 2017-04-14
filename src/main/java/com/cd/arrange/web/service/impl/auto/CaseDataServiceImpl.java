package com.cd.arrange.web.service.impl.auto;

import com.cd.arrange.web.dao.auto.CaseDataDAO;
import com.cd.arrange.web.model.auto.CaseData;
import com.cd.arrange.web.service.auto.CaseDataService;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CaseDataServiceImpl implements CaseDataService{
	@Resource
	private CaseDataDAO caseDataDao;
	@Override
	public List<CaseData> findList(CaseData caseData) {
		return caseDataDao.findList(caseData);
	}
	@Override
	public CaseData findById(int id) {
		return caseDataDao.findById(id);
	}
	@Override
	public int insert(CaseData caseData) {
		try {
			int i = caseDataDao.insert(caseData);

			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int delete(int id) {
		try {
			int i = caseDataDao.delete(id);
			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int update(String jsonStr) {
		try {
			JSONArray json = new JSONArray(jsonStr);
			int j = 0;
			for (int i = 0; i < json.length(); i++) {
				JSONObject jo = json.getJSONObject(i);
				CaseData cd = new CaseData();
				cd.setId(jo.getInt("id"));
				cd.setDataValue(jo.getString("dataValue"));
				j += caseDataDao.update(cd);
			}
			return j;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public List<CaseData> findListByUserId(int userId) {
		return caseDataDao.findListByUserId(userId);
	}
	@Override
	public int findCount(CaseData caseData){
		return caseDataDao.findCount(caseData);
	}


}
