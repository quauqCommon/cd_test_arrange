package com.cd.arrange.web.controller;

import org.json.JSONArray;

public abstract class BaseController {
	protected String toJson(int sEcho, int count, JSONArray json) {
		String jsonStr = "";
		jsonStr += "{\"sEcho\":" + sEcho + ",\"iTotalRecords\":" + count + ",\"iTotalDisplayRecords\":" + count
				+ ",\"aaData\":" + json.toString() + "}";
		System.out.println(jsonStr.toString());
		return jsonStr;
	}
}
