package com.note.website.core.repository;

import org.springframework.data.repository.CrudRepository;

import com.note.website.core.entity.User;

public interface UserRepository extends CrudRepository<User, Integer> {

}
