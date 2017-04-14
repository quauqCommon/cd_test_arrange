package com.cd.arrange.web.controller.operation;

import com.cd.arrange.web.controller.BaseController;
import com.cd.arrange.web.model.operation.Computer;
import com.cd.arrange.web.service.operation.ComputerService;
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
@RequestMapping(value = "/computer")
public class ComputerController extends BaseController {
    @Resource
    private ComputerService computerService;
    @ResponseBody
    @RequestMapping(value = "/computerList")
    public String findList(@ModelAttribute Computer computer, HttpServletRequest request) {
        computer.initPage(request);
        List<Computer> computerList = computerService.findList(computer);
        int size=computerService.findCount(computer);
        try {
            JSONArray json = new JSONArray();
            for (Computer c : computerList) {
                JSONObject jo = new JSONObject();
                jo.put("id", c.getId());
                jo.put("name", c.getName());
                jo.put("ip", c.getIp());
                jo.put("userName", c.getUserName());
                jo.put("password", c.getPassword());
                jo.put("category", c.getCategory()==1?"Linux":"Windows");
                json.put(jo);
            }

            return toJson(0,size,json);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(),e.getCause());
        }
    }
    @ResponseBody
    @RequestMapping(value = "/insertComputer")
    public int insertComputer(@ModelAttribute Computer computer,HttpServletRequest request){
        int i=0;
        i=computerService.insert(computer);
        return i;
    }
    @ResponseBody
    @RequestMapping(value = "/deleteComputer")
    public int deleteComputer(HttpServletRequest request){
        int i=0;
        int id=Integer.parseInt(request.getParameter("id"));
        i=computerService.delete(id);
        return i;
    }
}
