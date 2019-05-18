package cn.tycoding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tycoding.entity.User;
import cn.tycoding.service.UserService;

@Controller
@SuppressWarnings("all")
@RequestMapping("/systemManagement")
/**
 * 系统管理
 * @author yinping.sun
 */
public class SyatemManagementController {
	@Autowired
	private UserService userService;
	/**
	 * 用户管理
	 * @author yinping.sun
	 * @return
	 */
	@RequestMapping("/userManagement")
	public String userManagement(){
		System.out.println("*********");
		return "jsp/systemManagement/user_management";
	}
	
	/**
	 * 添加用户
	 * @author yinping.sun
	 */
	@RequestMapping("/addUser")
	public String addUser(){
		System.out.println("--------");
//		User user=new User(username,password);
//		userService.create(user);
		return "jsp/systemManagement/adduser";
	}
}
