package com.cd.arrange.web.service.impl.auto;

import com.cd.arrange.web.dao.auto.ProjectDAO;
import com.cd.arrange.web.model.auto.Project;
import com.cd.arrange.web.service.auto.ProjectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService{
	@Resource
	private ProjectDAO projectDao;
	@Override
	public List<Project> findList(Project c) {
		return projectDao.findList(c);
	}
	@Override
	public Project findById(int id) {
		return projectDao.findById(id);
	}
	@Override
	public int insert(Project executeProject) {
		try {
			int i = projectDao.insert(executeProject);

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
	public int update(Project executeProject) {
		try {
			return projectDao.update(executeProject);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public List<Project> findListByUserId(int userId) {
		return projectDao.findListByUserId(userId);
	}
	@Override
	public int findCount(Project executeProject){
		return projectDao.findCount(executeProject);
	}


}
