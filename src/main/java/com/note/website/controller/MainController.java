package com.note.website.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.note.website.common.web.BaseController;
import com.note.website.core.entity.User;
import com.note.website.service.UserService;

@Controller
public class MainController extends BaseController {

	private static final Logger logger = Logger.getLogger(MainController.class);

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome(HttpServletRequest request) {
		return "page/welcome";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(HttpServletRequest request) {
		return "index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Object> add(HttpServletRequest request, @Valid User user, BindingResult bindingResult) {
		Map<String, Object> map = new HashMap<String, Object>();
		logger.debug("保存");

		if (bindingResult.hasErrors()) {
			map.put("success", false);
			StringBuffer sb = new StringBuffer();
			List<ObjectError> oe = bindingResult.getAllErrors();
			for (ObjectError objectError : oe) {
				sb.append(objectError.getDefaultMessage() + "\r\n");
			}
			map.put("data", sb.toString());
		} else {
			map.put("success", true);
			user.setStatus(1);
			userService.addUser(user);
		}

		return new ResponseEntity<>(map, HttpStatus.OK);
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Object> list(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		Iterable<User> lists = userService.selectAll();
		map.put("data", lists);
		return new ResponseEntity<>(map, HttpStatus.OK);
	}

	@RequestMapping(value = "/find/{userId}", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Object> find(HttpServletRequest request, @PathVariable("userId") Integer userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		User user = userService.findById(userId);
		map.put("data", user);
		return new ResponseEntity<>(map, HttpStatus.OK);
	}

	@RequestMapping(value = "/delete/{userId}", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Object> delete(HttpServletRequest request, @PathVariable("userId") Integer userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		userService.delete(userId);
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
}
