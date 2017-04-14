package com.cd.arrange.web.controller.auto;

import com.cd.arrange.core.util.JsonUtil;
import com.cd.arrange.web.model.auto.DataMap;
import com.cd.arrange.web.controller.BaseController;
import com.cd.arrange.web.service.auto.DataMapService;
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
@RequestMapping(value = "/dataMap")
public class DataMapController extends BaseController {
    @Resource
    private DataMapService dataMapService;
    @ResponseBody
    @RequestMapping(value = "/dataMapList")
    public String findList(@ModelAttribute DataMap dataMap, HttpServletRequest request, Model model) {
        dataMap.initPage(request);
        List<DataMap> dataMapList = dataMapService.findList(dataMap);
        int size=dataMapService.findCount(dataMap);
        try {
            JSONArray json = new JSONArray();
            for (DataMap p : dataMapList) {
                JSONObject jo = JsonUtil.getInstance().reflect(p);
                json.put(jo);
            }
            return toJson(0,size,json);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(),e.getCause());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/insertDataMap")
    public int insertDataMap(@ModelAttribute DataMap dataMap,HttpServletRequest request){
        int i=0;
        int sort=dataMapService.findMaxSort(dataMap.getScriptId());
        dataMap.setSort(sort+1);
        i=dataMapService.insert(dataMap);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/deleteDataMap")
    public int deleteDataMap(HttpServletRequest request){
        int i=0;
        int id=Integer.parseInt(request.getParameter("id"));
        i=dataMapService.delete(id);
        return i;
    }
}
