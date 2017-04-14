package com.cd.arrange.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.annotation.Resource;

import com.cd.arrange.web.model.Bug;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cd.arrange.web.service.BugService;


@Controller
@RequestMapping(value = "/bug")
public class BugController extends BaseController{
	@Resource
	private BugService bugService;
	
	@ResponseBody
	@RequestMapping(value = "/bugList")
	public String findBugList(@ModelAttribute Bug bug, HttpServletRequest request) {
		bug.initPage(request);
		List<Bug> bugList = bugService.findBugList(bug);
		int size=bugService.findBugCount(bug);
		try {
			JSONArray json = new JSONArray();
			for (Bug b : bugList) {
				JSONObject jo = new JSONObject();
				jo.put("id", b.getId());
				jo.put("bug_id", b.getBug_id());
				jo.put("severity", b.getSeverity());
				jo.put("priority", b.getPriority());
				jo.put("bug_title", b.getBug_title());
				jo.put("creater", b.getCreater());
				jo.put("assign", b.getAssign());
				jo.put("solvers", b.getSolvers());
				jo.put("solution", b.getSolution());
				jo.put("modify_date", b.getModify_date());
				jo.put("status", b.getStatus());

				json.put(jo);
			}

			return toJson(0,size,json);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage(),e.getCause());
		}
	}
}
