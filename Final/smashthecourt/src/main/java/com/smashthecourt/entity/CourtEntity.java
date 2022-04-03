package com.smashthecourt.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
//Done 27/02
@Entity
@Table(name="Court_info_table")
public class CourtEntity {

	@Id
	@Column(name ="court_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int courtId;
	
	@Column(name ="court_no")
	private int courtNo;
	
	@Column(name ="court_start_time")
	private int startTime;
	
	@Column(name ="court_end_time")
	private int endTime;
	
	@Column(name ="court_desc")
	private String description;
	
	@Column(name ="court_charge_hr")
	private int charges;
	
//	@ManyToOne
//	@JoinColumn(name ="club_id")
//	private int clubId;
	
	@ManyToOne
	@JoinColumn(name ="club_id" )
	private ClubDetailsEntity clubId;
	
	
	
	public CourtEntity() {
		super();
	}



	public CourtEntity( int courtNo, int startTime, int endTime, String description, int charges,
			ClubDetailsEntity clubId) {
		super();

		this.courtNo = courtNo;
		this.startTime = startTime;
		this.endTime = endTime;
		this.description = description;
		this.charges = charges;
		this.clubId = clubId;
	}

	public CourtEntity(int courtId, int courtNo, int startTime, int endTime, String description, int charges) {
		super();
		this.courtId = courtId;
		this.courtNo = courtNo;
		this.startTime = startTime;
		this.endTime = endTime;
		this.description = description;
		this.charges = charges;
	}

	public int getCourtId() {
		return courtId;
	}



	public void setCourtId(int courtId) {
		this.courtId = courtId;
	}



	public int getCourtNo() {
		return courtNo;
	}



	public void setCourtNo(int courtNo) {
		this.courtNo = courtNo;
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



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public int getCharges() {
		return charges;
	}



	public void setCharges(int charges) {
		this.charges = charges;
	}



	public ClubDetailsEntity getClubId() {
		return clubId;
	}



	public void setClubId(ClubDetailsEntity clubId) {
		this.clubId = clubId;
	}



	@Override
	public String toString() {
		return "CourtEntity [courtId=" + courtId + ", courtNo=" + courtNo + ", startTime=" + startTime + ", endTime="
				+ endTime + ", description=" + description + ", charges=" + charges + ", clubId=" + clubId + "]";
	}
	
	
	
}
