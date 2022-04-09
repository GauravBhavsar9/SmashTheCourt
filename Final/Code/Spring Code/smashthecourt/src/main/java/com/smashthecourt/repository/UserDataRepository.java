package com.smashthecourt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.smashthecourt.entity.UserDataEntity;

@Repository
public interface UserDataRepository extends JpaRepository<UserDataEntity,Integer>{
		
	@Query(value ="select * from user_info_table where user_email = :email",nativeQuery = true)
	UserDataEntity findByEmail(@Param("email")String email);

	
}





