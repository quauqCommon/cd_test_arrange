package com.cd.arrange.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.annotation.Resource;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cd.arrange.web.model.dayTask;
import com.cd.arrange.web.service.dayTaskService;


@Controller
@RequestMapping(value = "/dayTask")
public class dayTaskController extends BaseController{
	@Resource
	private dayTaskService dayTaskService;
	
	@ResponseBody
	@RequestMapping(value = "/dayTaskList")
	public String findTakList(@ModelAttribute dayTask daytask,HttpServletRequest request) {
		daytask.initPage(request);
		List<dayTask> dayTaskList = dayTaskService.finddayTaskList(daytask);
		int size=dayTaskService.finddayTaskCount(daytask);
		try {
			JSONArray json = new JSONArray();
			for (dayTask dt : dayTaskList) {
				JSONObject jo = new JSONObject();
				jo.put("id", dt.getId());
				jo.put("week", dt.getWeek());
				jo.put("content", dt.getContent());
				json.put(jo);
			}

			return toJson(0,size,json);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage(),e.getCause());
		}
	}
}
