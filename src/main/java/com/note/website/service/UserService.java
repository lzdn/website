package com.note.website.service;

import com.note.website.core.entity.User;

public interface UserService {

	void addUser(User user);

	Iterable<User> selectAll();
	
	void delete(Integer userId);
}
