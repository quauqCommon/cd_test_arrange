package com.cd.arrange.web.controller.auto;

import com.cd.arrange.core.util.JsonUtil;
import com.cd.arrange.web.controller.BaseController;
import com.cd.arrange.web.model.auto.Group;
import com.cd.arrange.web.service.auto.GroupService;
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
@RequestMapping(value = "/group")
public class GroupController extends BaseController {
    @Resource
    private GroupService groupService;
    @ResponseBody
    @RequestMapping(value = "/groupList",produces = "text/json;charset=UTF-8")
    public String findList(@ModelAttribute Group group, HttpServletRequest request) {
        group.initPage(request);
        List<Group> groupList = groupService.findList(group);
        int size=groupService.findCount(group);
        try {
            JSONArray json = new JSONArray();
            for (Group g : groupList) {
                JSONObject jo = JsonUtil.getInstance().reflect(g);
                json.put(jo);
            }

            return toJson(0,size,json);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(),e.getCause());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/insertGroup")
    public int insertGroup(@ModelAttribute Group group,HttpServletRequest request){
        int i=0;
        i=groupService.insert(group);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/deleteGroup")
    public int deleteGroup(HttpServletRequest request){
        int i=0;
        int id=Integer.parseInt(request.getParameter("id"));
        i=groupService.delete(id);
        return i;
    }
}
