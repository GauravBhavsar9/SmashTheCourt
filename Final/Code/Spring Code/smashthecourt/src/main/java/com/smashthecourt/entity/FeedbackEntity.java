package com.smashthecourt.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
//Done27/02
@Entity
@Table(name= "feedback_table")
public class FeedbackEntity {

	@Id
	@Column(name = "feedback_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int feedbackId;
	
	@Column(name = "user_name")
	private String userName;
	
	@Column(name ="court_id")
	private int courtId;
	
	@Column(name ="feedback_rating")
	private int ratings;
	
	@Column(name ="feedback_comments")
	private String comment;
	
	public FeedbackEntity() {
		super();
	}
	public FeedbackEntity(int feedback_id, String uName, int courtId, int ratings, String comment) {
		super();
		this.feedbackId = feedback_id;
		this.userName = uName;
		this.courtId = courtId;
		this.ratings = ratings;
		this.comment = comment;
	}
	public int getFeedback_id() {
		return feedbackId;
	}
	public void setFeedback_id(int feedback_id) {
		this.feedbackId = feedback_id;
	}
	public String getuName() {
		return userName;
	}
	public void setuName(String uName) {
		this.userName = uName;
	}
	public int getCourtId() {
		return courtId;
	}
	public void setCourtId(int courtId) {
		this.courtId = courtId;
	}
	public int getRatings() {
		return ratings;
	}
	public void setRatings(int ratings) {
		this.ratings = ratings;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "QuestionEntity [feedback_id=" + feedbackId + ", uName=" + userName + ", courtId=" + courtId + ", ratings="
				+ ratings + ", comment=" + comment + "]";
	}
	
	
	
	
}
