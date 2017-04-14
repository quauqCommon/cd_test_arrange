package com.cd.arrange.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 视图控制器,返回jsp视图给前端
 * 
 * @author AutoTest
 * @since 2014年5月28日 下午4:00:49
 **/
@Controller
@RequestMapping("/page")
public class PageController {
	
	 /**
     * 登录页
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * dashboard页
     */
    @RequestMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }
    /**
     * 用户列表
     */
    @RequestMapping("/userList")
    public String userList() {
        return "user/userList";
    }
    /**
     * 用户列表
     */
    @RequestMapping("/roleList")
    public String roleList() {
        return "role/roleList";
    }
    /**
     * 任务列表
     */
    @RequestMapping("/taskList")
    public String taskList() {
        return "task/taskList";
    }
    /**
     * 每日任务列表
     */
    @RequestMapping("/dayTaskList")
    public String dayTaskList() {
        return "task/dayTaskList";
    }
    /**
     * bug列表  By YC 2016-11-14
     */
    @RequestMapping("/bugList")
    public String bugList() {
        return "bug/bugList";
    }
    /**
     * bugfree统计报表   By YC 
     */
    @RequestMapping("/bugChart")
    public String bugChart() {
        return "bug/bugChart";
    }
    /**
     * 404页
     */
    @RequestMapping("/404")
    public String error404() {
        return "404";
    }

    /**
     * 401页
     */
    @RequestMapping("/401")
    public String error401() {
        return "401";
    }

    /**
     * 500页
     */
    @RequestMapping("/500")
    public String error500() {
        return "500";
    }

}