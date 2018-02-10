package com.note.website.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.note.website.core.entity.User;
import com.note.website.core.repository.UserRepository;
import com.note.website.service.UserService;

@Service
@CacheConfig(cacheNames = "UserService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	@CachePut(key = "#user.userId+'cache'") // 刷新缓存
	@Transactional(value = "notecoreTransactionManager")
	public void addUser(User user) {
		userRepository.save(user);
	}

	@Override
	@Cacheable(keyGenerator = "wiselyKeyGenerator") // 使用自定义key
	public Iterable<User> selectAll() {
		return userRepository.findAll();
	}

	@Override
	@CacheEvict(key = "#userId+'cache'")//清除缓存
	public void delete(Integer userId) {
		userRepository.delete(userId);
	}

	@Cacheable(key = "#userId+'cache'") // 放入缓存
	@Override
	public User findById(Integer userId) {
		return userRepository.findOne(userId);
	}

}
