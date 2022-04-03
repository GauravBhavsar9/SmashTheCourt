package com.smashthecourt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.smashthecourt.entity.CourtEntity;

@Repository
public interface CourtRepository extends JpaRepository<CourtEntity,Integer>{
	@Query(value="select * from court_info_table where club_id = :id", nativeQuery=true)
	List<CourtEntity> getbyClubid(@Param("id") int id);
	
	@Query(value="select * from court_info_table where court_id = :id", nativeQuery=true)
	CourtEntity getCourtDetailsByCourtId(@Param("id") int id);
	
	@Modifying
	@Transactional
	@Query(value="delete from court_info_table where club_id = :clubId", nativeQuery=true)
	void deleteCourtByClubId(@Param("clubId") int clubId);

	@Query(value="select * from court_info_table where club_id = :clubId", nativeQuery=true)
	List<CourtEntity> getCourtByClubId(@Param("clubId")int clubId);
}
