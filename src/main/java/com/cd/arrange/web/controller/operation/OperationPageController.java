package com.cd.arrange.web.controller.operation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by cd on 2017/3/24.
 */
@Controller
@RequestMapping("/page/operation")
public class OperationPageController {
    @RequestMapping("/computerList")
    public String userList() {
        return "operation/computerList";
    }
}
