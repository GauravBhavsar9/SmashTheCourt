package com.smashthecourt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.smashthecourt.entity.BookingEntity;

@Repository
public interface BookingRepository extends JpaRepository<BookingEntity,Integer>{
	
	List<BookingEntity> findByuserId(int id);
	
	@Query(value ="select booking_start_time from booking_table where month(booking_start_date) = :month" , nativeQuery = true)
	List<Integer> getSlots(@Param("month") int month);
	
	@Query(value =" select * from booking_table where user_id = :userId" , nativeQuery = true)
	List<BookingEntity> getByUserId(@Param("userId") int userId);

}
