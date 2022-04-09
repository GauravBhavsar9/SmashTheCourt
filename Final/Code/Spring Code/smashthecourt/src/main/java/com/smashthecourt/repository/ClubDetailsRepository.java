package com.smashthecourt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.smashthecourt.entity.ClubDetailsEntity;

@Repository
public interface ClubDetailsRepository extends JpaRepository<ClubDetailsEntity,Integer>{


	@Query(value ="SELECT DISTINCT club_city FROM club_info_table",nativeQuery = true)
	List<String> findAllCity();

	@Query(value ="SELECT DISTINCT club_city FROM club_info_table",nativeQuery = true)
	List<String> findAllClub();

	@Query(value ="select club_name from club_info_table where club_city = :city", nativeQuery=true)
	List<String> getClubs(@Param("city")String city);

	@Query(value ="select * from club_info_table where club_city = :city", nativeQuery=true)
	List<ClubDetailsEntity> getClubsAll(@Param("city")String city);

	@Query(value ="select * from club_info_table where owner_id = :ownerId", nativeQuery=true)
	List<ClubDetailsEntity> getClubsAllByOwnerId(@Param("ownerId")int ownerId);

	@Query(value ="select club_name from club_info_table where owner_id = :ownerId", nativeQuery=true)
	List<String> getClubNamesByOwnerId(@Param("ownerId")int ownerId);

	@Query(value ="select * from club_info_table where club_name = :clubName", nativeQuery=true)
	ClubDetailsEntity getClubByClubName(@Param("clubName")String clubName);

}
