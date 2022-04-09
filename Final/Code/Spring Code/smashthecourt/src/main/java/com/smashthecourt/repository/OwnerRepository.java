package com.smashthecourt.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.smashthecourt.entity.OwnerDataEntity;

@Repository
public interface OwnerRepository extends JpaRepository<OwnerDataEntity,Integer>{
		
	@Query(value ="select * from owner_info_table where owner_email = :email",nativeQuery = true)
	OwnerDataEntity findByEmail(@Param("email")String email);

	
}
