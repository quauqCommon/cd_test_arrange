package com.cd.arrange.web.controller.auto;

import com.cd.arrange.web.model.auto.DataMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by cd on 2017/3/24.
 */
@Controller
@RequestMapping("/page/auto")
public class AutoPageController {
    @RequestMapping("/caseList")
    public String userList() {
        return "auto/caseList";
    }
    @RequestMapping("/projectList")
    public String projectList() {
        return "auto/projectList";
    }
    @RequestMapping("/baseCaseList")
    public String baseCaseList(@RequestParam("caseId") String caseId, Model model) {
        model.addAttribute("caseId",caseId);
        return "auto/baseCaseList";
    }
    @RequestMapping("/scriptList")
    public String scriptList() {
        return "auto/scriptList";
    }
    @RequestMapping("/dataMapList")
    public String dataMapList(@RequestParam("scriptId") String scriptId, Model model) {
        model.addAttribute("scriptId",scriptId);
        return "auto/dataMapList";
    }
    @RequestMapping("/caseScriptList")
    public String caseScriptList(@RequestParam("baseCaseId") String baseCaseId, Model model) {
        model.addAttribute("baseCaseId",baseCaseId);
        return "auto/caseScriptList";
    }
    @RequestMapping("/groupList")
    public String groupList(@RequestParam("projectId") String projectId, Model model) {
        model.addAttribute("projectId",projectId);
        return "auto/groupList";
    }
}
