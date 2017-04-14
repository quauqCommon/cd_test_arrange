package com.cd.arrange.web.controller.auto;

import com.cd.arrange.core.util.JsonUtil;
import com.cd.arrange.web.controller.BaseController;
import com.cd.arrange.web.model.User;
import com.cd.arrange.web.model.auto.Case;
import com.cd.arrange.web.service.auto.CaseService;
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
@RequestMapping(value = "/case")
public class CaseController extends BaseController {
    @Resource
    private CaseService caseService;
    @ResponseBody
    @RequestMapping(value = "/caseList",produces = "text/json;charset=UTF-8")
    public String findList(@ModelAttribute Case c, HttpServletRequest request) {
        c.initPage(request);
        List<Case> caseList = caseService.findList(c);
        int size=caseService.findCount(c);
        try {
            JSONArray json = new JSONArray();
            for (Case cc : caseList) {
                JSONObject jo = JsonUtil.getInstance().reflect(cc);
                json.put(jo);
            }

            return toJson(0,size,json);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(),e.getCause());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/insertCase")
    public int insertCase(@ModelAttribute Case c,HttpServletRequest request){
        int i=0;
        User user=(User)request.getSession().getAttribute("userInfo");
        c.setUserId(user.getId());
        i=caseService.insert(c);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/deleteCase")
    public int deleteCase(HttpServletRequest request){
        int i=0;
        int id=Integer.parseInt(request.getParameter("id"));
        i=caseService.delete(id);
        return i;
    }
}
