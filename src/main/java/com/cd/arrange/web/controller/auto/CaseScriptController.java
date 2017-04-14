package com.cd.arrange.web.controller.auto;

import com.cd.arrange.core.util.JsonUtil;
import com.cd.arrange.web.model.auto.CaseData;
import com.cd.arrange.web.model.auto.CaseScript;
import com.cd.arrange.web.controller.BaseController;
import com.cd.arrange.web.service.auto.CaseDataService;
import com.cd.arrange.web.service.auto.CaseScriptService;
import com.cd.arrange.web.service.auto.DataMapService;
import com.cd.arrange.web.model.auto.DataMap;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
@RequestMapping(value = "/caseScript")
public class CaseScriptController extends BaseController {
    @Resource
    private CaseScriptService caseScriptService;
    @Resource
    private DataMapService dataMapService;
    @Resource
    private CaseDataService caseDataService;
    @ResponseBody
    @RequestMapping(value = "/caseScriptList",produces = "text/json;charset=UTF-8")
    public String findList(@ModelAttribute CaseScript caseScript, HttpServletRequest request, Model model) {
        caseScript.initPage(request);
        List<CaseScript> caseScriptList = caseScriptService.findList(caseScript);
        int size=caseScriptService.findCount(caseScript);
        try {
            JSONArray json = new JSONArray();
            for (CaseScript cs : caseScriptList) {
                JSONObject jo = JsonUtil.getInstance().reflect(cs);
                DataMap dataMap=new DataMap();
                dataMap.setScriptId(cs.getScriptId());
                List<DataMap> dataMapList = dataMapService.findList(dataMap);
                JSONArray jsonDataMapList=new JSONArray();
                for(DataMap d:dataMapList) {
                	JSONObject jsonDataMap=JsonUtil.getInstance().reflect(d);
                	CaseData caseData=new CaseData();
                	caseData.setCaseScriptId(cs.getId());
                	caseData.setDataMapId(d.getId());
                	List<CaseData> caseDataList=caseDataService.findList(caseData);
                	JSONObject jsonCaseData=new JSONObject();
                	if(caseDataList.size()==1) {
	                	jsonCaseData=JsonUtil.getInstance().reflect(caseDataList.get(0));
                	}
                	jsonDataMap.put("caseData", jsonCaseData);
                	jsonDataMapList.put(jsonDataMap);
                }
                jo.put("dataMapList", jsonDataMapList);
                json.put(jo);
            }
            return toJson(0,size,json);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(),e.getCause());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/insertCaseScript")
    public int insertCaseScript(@ModelAttribute CaseScript caseScript,HttpServletRequest request){
        int i=0;
        int sort=caseScriptService.findMaxSort(caseScript.getScriptId());
        caseScript.setSort(sort+1);
        i=caseScriptService.insert(caseScript);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/deleteCaseScript")
    public int deleteCaseScript(HttpServletRequest request){
        int i=0;
        int id=Integer.parseInt(request.getParameter("id"));
        i=caseScriptService.delete(id);
        return i;
    }
    
}
