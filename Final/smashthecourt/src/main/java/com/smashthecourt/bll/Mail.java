package com.smashthecourt.bll;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;


@Service
public class Mail {


	@Autowired
	private JavaMailSender mailSender;


	public void ownerForgotPassword(String email, String password) {

		SimpleMailMessage message = new SimpleMailMessage();

		String body = "This Is Your Password : "+password;
		String subject ="Smash The Court Forgot Password";

		message.setFrom("smashthecourt@gmail.com");
		message.setTo(email);
		message.setText(body);
		message.setSubject(subject);

		mailSender.send(message);
		System.out.println("Mail Was Send");
	}


	public void userForgotPassword(String email, String password) {
		SimpleMailMessage message = new SimpleMailMessage();

		String body = "This Is Your Password : "+password;
		String subject ="Smash The Court Forgot Password";

		message.setFrom("smashthecourt@gmail.com");
		message.setTo(email);
		message.setText(body);
		message.setSubject(subject);

		mailSender.send(message);
		System.out.println("Mail Was Send");

	}


	public void bookingConfirmationMail(String email, String city, String club, int court, Date startDate, Date endDate,
			int slot, int amount) {

		SimpleMailMessage message = new SimpleMailMessage();

		String body = "Congratulation You Have Successfully Booked Court \nBooking Details : "+"\nCity: "+city+" Club : "+club+" Court : "+court+"\n You Have Booked The Court From "+startDate+" To "+endDate+" Slot Timing : "+slot+":00 : "+(slot+1)+":00\nBooking Amount : "+amount;
		String subject ="Booking Details";

		message.setFrom("smashthecourt@gmail.com");
		message.setTo(email);
		message.setText(body);
		message.setSubject(subject);

		mailSender.send(message);
		System.out.println("Mail Was Send");

	}




}
