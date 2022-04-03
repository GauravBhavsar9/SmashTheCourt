package com.smashthecourt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smashthecourt.entity.BookingEntity;
import com.smashthecourt.repository.BookingRepository;


@Service
public class BookingDao {

	@Autowired
	BookingRepository repo;

	public List<BookingEntity> getById(int id){
		return repo.findByuserId(id);
	}

	
	public List<Integer> getSlots(int month){
		return repo.getSlots(month);
	}


	public void booked(BookingEntity bookObj) {

		repo.save(bookObj);
		
	}


	public List<BookingEntity> getByUserId(int userId) {
		
		return repo.getByUserId(userId);
	}


	/*
	 * public boolean addBooking(String city, String club, int court, int month, int
	 * slot) {
	 * 
	 * 
	 * }
	 */

	
}
