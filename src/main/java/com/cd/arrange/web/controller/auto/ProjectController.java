package com.cd.arrange.web.controller.auto;

import com.cd.arrange.web.controller.BaseController;
import com.cd.arrange.web.model.auto.Project;
import com.cd.arrange.web.service.auto.ProjectService;
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
@RequestMapping(value = "/project")
public class ProjectController extends BaseController {
    @Resource
    private ProjectService projectService;
    @ResponseBody
    @RequestMapping(value = "/projectList",produces = "text/json;charset=UTF-8")
    public String findList(@ModelAttribute Project project, HttpServletRequest request) {
        project.initPage(request);
        List<Project> projectList = projectService.findList(project);
        int size=projectService.findCount(project);
        try {
            JSONArray json = new JSONArray();
            for (Project p : projectList) {
                JSONObject jo = new JSONObject();
                jo.put("id", p.getId());
                jo.put("name", p.getName());
                json.put(jo);
            }

            return toJson(0,size,json);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(),e.getCause());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/insertComputer")
    public int insertComputer(@ModelAttribute Project c,HttpServletRequest request){
        int i=0;
        i=projectService.insert(c);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/deleteComputer")
    public int deleteComputer(HttpServletRequest request){
        int i=0;
        int id=Integer.parseInt(request.getParameter("id"));
        i=projectService.delete(id);
        return i;
    }
}
