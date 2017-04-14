package com.cd.arrange.web.service.impl.auto;

import com.cd.arrange.web.dao.auto.GroupDAO;
import com.cd.arrange.web.model.auto.Group;
import com.cd.arrange.web.service.auto.GroupService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GroupServiceImpl implements GroupService{
	@Resource
	private GroupDAO groupDao;
	@Override
	public List<Group> findList(Group group) {
		return groupDao.findList(group);
	}
	@Override
	public Group findById(int id) {
		return groupDao.findById(id);
	}
	@Override
	public int insert(Group group) {
		try {
			int i = groupDao.insert(group);

			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int delete(int id) {
		try {
			int i = groupDao.delete(id);
			return i;
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public int update(Group group) {
		try {
			return groupDao.update(group);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	@Override
	public List<Group> findListByUserId(int userId) {
		return groupDao.findListByUserId(userId);
	}
	@Override
	public int findCount(Group group){
		return groupDao.findCount(group);
	}


}
