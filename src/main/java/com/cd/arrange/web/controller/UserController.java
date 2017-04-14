package com.cd.arrange.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.cd.arrange.web.model.User;
import com.cd.arrange.web.security.PermissionSign;
import com.cd.arrange.web.security.RoleSign;
import com.cd.arrange.web.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 用户控制器
 * 
 * @author AutoTest
 * @since 2014年5月28日 下午3:54:00
 **/
@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseController{

	@Resource
	private UserService userService;

	/**
	 * 登录页
	 */
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	/**
	 * 用户登录
	 * 
	 * @param user
	 * @param result
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@Valid User user, BindingResult result, Model model, HttpServletRequest request) {
		try {
			Subject subject = SecurityUtils.getSubject();
			// 已登陆则 跳到首页
			if (subject.isAuthenticated()) {
				return "redirect:/";
			}
			if (result.hasErrors()) {
				model.addAttribute("error", "参数错误！");
				return "login";
			}
			// 身份验证
			subject.login(new UsernamePasswordToken(user.getName(), user.getPassword()));
			// 验证成功在Session中保存用户信息
			final User authUserInfo = userService.findUserByName(user.getName());
			request.getSession().setAttribute("userInfo", authUserInfo);
		} catch (AuthenticationException e) {
			// 身份验证失败
			model.addAttribute("error", "用户名或密码错误 ！");
			return "login";
		}
		return "redirect:/";
	}

	/**
	 * 用户登出
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("userInfo");
		// 登出操作
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return "login";
	}

	/**
	 * 基于角色 标识的权限控制案例
	 */
	@RequestMapping(value = "/admin")
	@ResponseBody
	@RequiresRoles(value = RoleSign.ADMIN)
	public String admin() {
		return "拥有admin角色,能访问";
	}

	/**
	 * 基于权限标识的权限控制案例
	 */
	@RequestMapping(value = "/create")
	@ResponseBody
	@RequiresPermissions(value = PermissionSign.USER_CREATE)
	public String create() {
		return "拥有user:create权限,能访问";
	}
	@ResponseBody
	@RequestMapping(value = "/userList")
	public String findUserList(@ModelAttribute User user,HttpServletRequest request) {
		user.initPage(request);
		List<User> userList = userService.findUserList(user);
		int size=userService.findUserCount(user);
		try {
			JSONArray json = new JSONArray();
			for (User u : userList) {
				JSONObject jo = new JSONObject();
				jo.put("id", u.getId());
				jo.put("name", u.getName());
				json.put(jo);
			}

			return toJson(0,size,json);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage(),e.getCause());
		}
	}
	@ResponseBody
	@RequestMapping(value = "/insertUser")
	public int insertUser(@ModelAttribute User user,HttpServletRequest request){
		int i=0;
		i=userService.insertUser(user);
		return i;
	}
}
    
