package com.note.website.core.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.note.website.core.entity.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	@Query("select u from User u where u.userName= :userName and u.password= :password")
	User loginByUserNameAndPassword(@Param("userName") String userName,@Param("password") String password);
	
	@Query("select u from User u where u.userName= :userName")
	User userByUserName(@Param("userName") String userName);
}
