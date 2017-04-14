package com.cd.arrange.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.annotation.Resource;

import com.cd.arrange.web.service.TaskService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cd.arrange.web.model.Task;


@Controller
@RequestMapping(value = "/task")
public class TaskController extends BaseController{
	@Resource
	private TaskService taskService;
	
	@ResponseBody
	@RequestMapping(value = "/taskList")
	public String findTakList(@ModelAttribute Task task,HttpServletRequest request) {
		task.initPage(request);
		List<Task> taskList = taskService.findTaskList(task);
		int size=taskService.findTaskCount(task);
		try {
			JSONArray json = new JSONArray();
			for (Task t : taskList) {
				JSONObject jo = new JSONObject();
				jo.put("id", t.getId());
				jo.put("title", t.getTitle());
				jo.put("content", t.getContent());
				json.put(jo);
			}

			return toJson(0,size,json);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage(),e.getCause());
		}
	}
}
