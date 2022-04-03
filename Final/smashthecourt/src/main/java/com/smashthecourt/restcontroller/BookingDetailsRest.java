package com.smashthecourt.restcontroller;


import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.smashthecourt.bll.Mail;
import com.smashthecourt.dao.BookingDao;
import com.smashthecourt.dao.ClubDao;
import com.smashthecourt.dao.CourtDao;
import com.smashthecourt.entity.BookingEntity;
import com.smashthecourt.entity.ClubDetailsEntity;
import com.smashthecourt.entity.CourtEntity;
import com.smashthecourt.entity.UserDataEntity;

@RestController
@RequestMapping(path = "/bookingdetails")
@CrossOrigin
public class BookingDetailsRest {

	@Autowired
	BookingDao bookingDao;
	@Autowired
	ClubDao clubDao;
	@Autowired
	CourtDao courtDao;
	@Autowired
	Mail mail;

	@GetMapping("/getavailableslot/{month}")
	public List<Integer> getClub(@PathVariable int month){

		List<Integer> bookedSlots=bookingDao.getSlots(month);	
		ArrayList<Integer> availableSlots= new ArrayList<>();
		availableSlots.add(8);
		availableSlots.add(9);
		availableSlots.add(10);
		availableSlots.add(11);
		availableSlots.add(12);
		availableSlots.add(13);
		availableSlots.add(14);
		availableSlots.add(15);
		availableSlots.add(16);
		availableSlots.add(17);
		availableSlots.add(18);
		availableSlots.add(19);
		availableSlots.removeAll(bookedSlots);
		return availableSlots;
	}

	@PostMapping("/paymentdetails/{city}/{club}/{court}/{month}/{slot}/{amount}")
	public boolean paymentDetails(@PathVariable String city,@PathVariable String club,@PathVariable int court,@PathVariable int month,@PathVariable int slot,@PathVariable int amount) {

		System.out.println(city + " " + club + " " + court + " " + month + " " + slot + " " + amount);		

		 ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		    HttpSession sess= attr.getRequest().getSession(true);
		    UserDataEntity user = (UserDataEntity)sess.getAttribute("user");
		    
		    
		
		java.sql.Date d = java.sql.Date.valueOf(LocalDate.now());

		java.sql.Date startDate = new java.sql.Date(d.getYear(), month-1, 01);


		java.sql.Date endDate = new java.sql.Date(d.getYear(), month-1,28);

		
		mail.bookingConfirmationMail( user.getEmail(),  city, club , court , startDate ,  endDate , slot, amount);

		BookingEntity bookObj = new BookingEntity(user.getUserId(), court,  startDate,  endDate,  slot,slot+1, d ,  "booked",  amount, 1, 1);

		bookingDao.booked(bookObj);


		return true;
	}
	
	//get all bookings by userId
	
	@GetMapping("/getbookingbyuserid/{userId}")
	public List<BookingEntity> getBookingByUserId(@PathVariable int userId){
		return bookingDao.getByUserId(userId);
	}
	
	

}
