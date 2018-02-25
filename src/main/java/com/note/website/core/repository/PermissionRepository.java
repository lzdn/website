package com.note.website.core.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.note.website.core.entity.Permission;

public interface PermissionRepository extends CrudRepository<Permission, Integer> {

	@Query("select p from Permission p ")
	List<Permission> findAll();
	
	//@Query(value = "select u.*,tr.*,tp.* from t_user u left join t_user_role tur on tur.user_id = u.user_id left join t_role tr on tr.role_id = tur.role_id left join on t_role_permission trp on trp.role_id = tr.role_id left join t_permission tp on tp.id = trp.permission_id", nativeQuery = true)
	@Query(value = "select tp.* from t_user u left join t_user_role tur on tur.user_id = u.user_id left join t_role tr on tr.role_id = tur.role_id left join  t_role_permission trp on trp.role_id = tr.role_id left join t_permission tp on tp.id = trp.permission_id where u.user_id= :userId", nativeQuery = true)
	List<Permission> getUserPermissionByUserId(@Param("userId") Integer userId);
}
