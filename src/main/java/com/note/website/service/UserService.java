package com.note.website.service;

import com.note.website.core.entity.User;

public interface UserService {

	void addUser(User user)  throws Exception ;

	Iterable<User> selectAll();
	
	void delete(Integer userId);
	
	User findById(Integer userId);
	
	User loginByUserNameAndPassword(User user);
	
	User userByUserName(String userName);
}
