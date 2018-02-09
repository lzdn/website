package com.note.website.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.note.website.core.entity.User;
import com.note.website.core.repository.UserRepository;
import com.note.website.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public void addUser(User user) {
		userRepository.save(user);
	}

	@Override
	public Iterable<User> selectAll() {
		return userRepository.findAll();
	}

}
