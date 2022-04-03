package com.smashthecourt.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "booking_table")
	public class BookingEntity {

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name="booking_id")
		private int bookingId;
		
		@Column(name="user_id")
		private int userId;
		
		@Column(name="court_id")
		private int courtId;

		@Column(name="booking_start_date")
		private Date startDate;

		@Column(name="booking_end_date")
		private Date endDate;

		@Column(name="booking_start_time")
		private int startTime;

		@Column(name="booking_end_time")
		private int endTime;

		@Column(name="booking_date")
		private Date bookingDate;
		
		@Column(name="booking_status")
		private String bookingStatus;

		@Column(name="booking_total_amount")
		private int amount;
		
		@Column(name="booking_payment_status")
		private int paymentStatus;
		
		@Column(name="booking_is_Active")
		private int isActive;	
		
		
		public BookingEntity() {
		
		}
		
		public BookingEntity( int userId, int courtId, Date startDate, Date endDate, int startTime,int endTime, Date bookingDate, String bookingStatus, int amount, int paymentStatus, int isActive) {
			super();
			
			this.userId = userId;
			this.courtId = courtId;
			this.startDate = startDate;
			this.endDate = endDate;
			this.startTime = startTime;
			this.endTime = endTime;
			this.bookingDate = bookingDate;
			this.bookingStatus = bookingStatus;
			this.amount = amount;
			this.paymentStatus = paymentStatus;
			this.isActive = isActive;
		}

		public int getBookingId() {
			return bookingId;
		}

		public void setBookingId(int bookingId) {
			this.bookingId = bookingId;
		}

		public int getUserId() {
			return userId;
		}

		public void setUserId(int userId) {
			this.userId = userId;
		}

		public int getCourtId() {
			return courtId;
		}

		public void setCourtId(int courtId) {
			this.courtId = courtId;
		}

		public Date getStartDate() {
			return startDate;
		}

		public void setStartDate(Date startDate) {
			this.startDate = startDate;
		}

		public Date getEndDate() {
			return endDate;
		}

		public void setEndDate(Date endDate) {
			this.endDate = endDate;
		}

		public int getStartTime() {
			return startTime;
		}

		public void setStartTime(int startTime) {
			this.startTime = startTime;
		}

		public int getEndTime() {
			return endTime;
		}

		public void setEndTime(int endTime) {
			this.endTime = endTime;
		}

		public Date getBookingDate() {
			return bookingDate;
		}

		public void setBookingDate(Date bookingDate) {
			this.bookingDate = bookingDate;
		}

		public String getBookingStatus() {
			return bookingStatus;
		}

		public void setBookingStatus(String bookingStatus) {
			this.bookingStatus = bookingStatus;
		}

		public int getAmount() {
			return amount;
		}

		public void setAmount(int amount) {
			this.amount = amount;
		}

		public int getPaymentStatus() {
			return paymentStatus;
		}

		public void setPaymentStatus(int paymentStatus) {
			this.paymentStatus = paymentStatus;
		}

		public int getIsActive() {
			return isActive;
		}

		public void setIsActive(int isActive) {
			this.isActive = isActive;
		}

		@Override
		public String toString() {
			return "BookingEntity [bookingId=" + bookingId + ", userId=" + userId + ", courtId=" + courtId
					+ ", startDate=" + startDate + ", endDate=" + endDate + ", startTime=" + startTime + ", endTime="
					+ endTime + ", bookingDate=" + bookingDate + ", bookingStatus=" + bookingStatus + ", amount="
					+ amount + ", paymentStatus=" + paymentStatus + ", isActive=" + isActive + "]";
		}

		
			
		
}
