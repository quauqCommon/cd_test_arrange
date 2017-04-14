package com.cd.arrange.web.controller.auto;

import com.cd.arrange.core.util.JsonUtil;
import com.cd.arrange.web.controller.BaseController;
import com.cd.arrange.web.model.auto.CaseData;
import com.cd.arrange.web.service.auto.CaseDataService;
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
@RequestMapping(value = "/caseData")
public class CaseDataController extends BaseController {
    @Resource
    private CaseDataService caseDataService;
    @ResponseBody
    @RequestMapping(value = "/caseDataList",produces = "text/json;charset=UTF-8")
    public String findList(@ModelAttribute CaseData caseData, HttpServletRequest request) {
        List<CaseData> caseDataList = caseDataService.findList(caseData);
        int size=caseDataService.findCount(caseData);
        try {
            JSONArray json = new JSONArray();
            for (CaseData g : caseDataList) {
                JSONObject jo = JsonUtil.getInstance().reflect(g);
                json.put(jo);
            }

            return toJson(0,size,json);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(),e.getCause());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/insertCaseData")
    public int insertCaseData(@ModelAttribute CaseData caseData,HttpServletRequest request){
        int i=0;
        i=caseDataService.insert(caseData);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/deleteCaseData")
    public int deleteCaseData(HttpServletRequest request){
        int i=0;
        int id=Integer.parseInt(request.getParameter("id"));
        i=caseDataService.delete(id);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/updateCaseData")
    public int updateCaseData(HttpServletRequest request){
    	String jsonStr = request.getParameter("dataJson");
		int i = caseDataService.update(jsonStr);
        return i;
    }
}
