package com.note.website.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.note.website.common.web.BaseController;
import com.note.website.core.entity.User;
import com.note.website.service.UserService;
import com.note.website.utils.MD5Util;

@Controller
public class LoginController extends BaseController {

	private static final Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Object> login(HttpServletRequest request, @Valid User user,
			BindingResult bindingResult) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (bindingResult.hasErrors()) {
			map.put("error", "用户名或密码不能为空");
		}
		User loginuser = userService.loginByUserNameAndPassword(user);
		if(loginuser!=null) {
			map.put("success", true);
			map.put("message", "登陆成功");
		}else{
			logger.error("登录失败");
			map.put("error", "登录失败");
		}
		return new ResponseEntity<>(map, HttpStatus.OK);
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Object> register(HttpServletRequest request, @Valid User user,
			BindingResult bindingResult) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (bindingResult.hasErrors()) {
			map.put("error", "用户名或密码不能为空");
		}else {
			try {
				user.setStatus(1);
				user.setPassword(MD5Util.encode(user.getPassword()));
				userService.addUser(user);
				map.put("success", true);
				map.put("message", "注册成功");
			} catch (Exception e) {
				logger.error(e);
				map.put("error", "注册失败 : "+e.getMessage());
			}
		}
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
}
