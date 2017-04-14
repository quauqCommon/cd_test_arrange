package com.cd.arrange.web.controller.auto;

import com.cd.arrange.core.util.JsonUtil;
import com.cd.arrange.web.controller.BaseController;
import com.cd.arrange.web.model.auto.Script;
import com.cd.arrange.web.service.auto.ScriptService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by cd on 2017/3/24.
 */
@Controller
@RequestMapping(value = "/script")
public class ScriptController extends BaseController {
    @Resource
    private ScriptService scriptService;
    @ResponseBody
    @RequestMapping(value = "/scriptList",produces = "text/json;charset=UTF-8")
    public String findList(@ModelAttribute Script script, HttpServletRequest request) {
        script.initPage(request);
        List<Script> scriptList = scriptService.findList(script);
        int size=scriptService.findCount(script);
        try {
            JSONArray json = new JSONArray();
            for (Script s : scriptList) {
                JSONObject jo = JsonUtil.getInstance().reflect(s);
                json.put(jo);
            }

            return toJson(0,size,json);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(),e.getCause());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/insertScript")
    public int insertScript(@ModelAttribute Script c,HttpServletRequest request){
        int i=0;
        i=scriptService.insert(c);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/deleteScript")
    public int deleteScript(HttpServletRequest request){
        int i=0;
        int id=Integer.parseInt(request.getParameter("id"));
        i=scriptService.delete(id);
        return i;
    }
}
