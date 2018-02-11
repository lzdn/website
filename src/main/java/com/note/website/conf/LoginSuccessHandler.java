package com.note.website.conf;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", true);
		map.put("message", "登陆成功");
		writeJSON(response, map);
	}

	protected void writeJSON(HttpServletResponse response, Object obj) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		response.getWriter().write(JSON.toJSONString(obj, SerializerFeature.WriteMapNullValue));
	}
}
