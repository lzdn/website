package com.note.website.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.note.website.common.web.BaseController;
import com.note.website.core.entity.User;
import com.note.website.service.UserService;

@Controller
@RequestMapping("user")
public class UserController extends BaseController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(HttpServletRequest request, Model model) {
		Iterable<User> userlist = userService.selectAll();
		model.addAttribute("userlist", userlist);
		return "page/user/list";
	}
}
