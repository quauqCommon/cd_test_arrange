package com.cd.arrange.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.cd.arrange.web.model.Role;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cd.arrange.web.service.RoleService;

@Controller
@RequestMapping(value = "/role")
public class RoleController extends BaseController{
	@Resource
	private RoleService roleService;
	@ResponseBody
	@RequestMapping(value = "/roleList")
	public String findRoleList(@ModelAttribute Role role, HttpServletRequest request) {
		role.initPage(request);
		List<Role> roleList=roleService.findRoleList(role);
		int size=roleService.findRoleCount(role);
		try {
			JSONArray json = new JSONArray();
			for (Role r : roleList) {
				JSONObject jo = new JSONObject();
				jo.put("id", r.getId());
				jo.put("name", r.getName());
				jo.put("sign", r.getSign());
				jo.put("description", r.getDescription());
				json.put(jo);
			}
			return toJson(0,size,json);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage(),e.getCause());
		}
	}
}
