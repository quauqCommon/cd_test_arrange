package com.cd.arrange.web.controller.auto;

import com.cd.arrange.core.util.JsonUtil;
import com.cd.arrange.web.controller.BaseController;
import com.cd.arrange.web.service.auto.BaseCaseService;
import com.cd.arrange.web.model.auto.BaseCase;
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
@RequestMapping(value = "/baseCase")
public class BaseCaseController extends BaseController {
    @Resource
    private BaseCaseService baseCaseService;
    @ResponseBody
    @RequestMapping(value = "/baseCaseList",produces = "text/json;charset=UTF-8")
    public String findList(@ModelAttribute BaseCase baseCase, HttpServletRequest request) {
        baseCase.initPage(request);
        List<BaseCase> baseCaseList = baseCaseService.findList(baseCase);
        int size=baseCaseService.findCount(baseCase);
        try {
            JSONArray json = new JSONArray();
            for (BaseCase bc : baseCaseList) {
                JSONObject jo = JsonUtil.getInstance().reflect(bc);
                json.put(jo);
            }

            return toJson(0,size,json);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(),e.getCause());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/insertBaseCase")
    public int insertBaseCase(@ModelAttribute BaseCase baseCase,HttpServletRequest request){
        int i=0;
        i=baseCaseService.insert(baseCase);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/deleteBaseCase")
    public int deleteBaseCase(HttpServletRequest request){
        int i=0;
        int id=Integer.parseInt(request.getParameter("id"));
        i=baseCaseService.delete(id);
        return i;
    }
}
