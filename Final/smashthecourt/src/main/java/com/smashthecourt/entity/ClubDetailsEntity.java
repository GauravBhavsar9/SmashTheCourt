package com.smashthecourt.entity;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


//Done27/02
@Entity
@Table(name = "club_info_table")
public class ClubDetailsEntity {
	
	@Id
	@Column(name="club_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int clubId;
	
	@OneToMany(cascade = CascadeType.ALL)
    private List<CourtEntity> obj;
	
	
	@Column (name="club_name")
	private String clubName;
	
	
	@Column (name="no_of_courts")
	private int noCourts;
	
	@Column (name="club_city")
	private String city;
	
	@Column (name="club_pincode")
	private int pincode;
	
	@Column (name="club_address")
	private String clubAddress;
	
	@Column (name="club_status")
	private String clubStatus;
	
	@ManyToOne
	@JoinColumn(name="owner_id")
	OwnerDataEntity ownerId;
	
	
//	@ManyToOne
//	@JoinColumn(name="owner_id")
//	private int ownerId;

	public ClubDetailsEntity() {
		super();
	}

	

	public ClubDetailsEntity(int clubId, List<CourtEntity> obj, String clubName, int noCourts, String city, int pincode,
			String clubAddress, String clubStatus, OwnerDataEntity ownerId) {
		super();
		this.clubId = clubId;
		this.obj = obj;
		this.clubName = clubName;
		this.noCourts = noCourts;
		this.city = city;
		this.pincode = pincode;
		this.clubAddress = clubAddress;
		this.clubStatus = clubStatus;
		this.ownerId = ownerId;
	}

	//for insert
	public ClubDetailsEntity( String clubName, int noCourts, String city, int pincode,
			String clubAddress, String clubStatus, OwnerDataEntity ownerId) {
		super();
		
		
		this.clubName = clubName;
		this.noCourts = noCourts;
		this.city = city;
		this.pincode = pincode;
		this.clubAddress = clubAddress;
		this.clubStatus = clubStatus;
		this.ownerId = ownerId;
	}

	
	public ClubDetailsEntity(int clubId, String clubName, int noCourts, String city, int pincode,
			String clubAddress, String clubStatus, OwnerDataEntity ownerId) {
		super();
		this.clubId = clubId;
		this.clubName = clubName;
		this.noCourts = noCourts;
		this.city = city;
		this.pincode = pincode;
		this.clubAddress = clubAddress;
		this.clubStatus = clubStatus;
		this.ownerId = ownerId;
	}

	
	//for update
	
	public ClubDetailsEntity(int clubId,String clubName, int noCourts, String city, int pincode,
			String clubAddress, String clubStatus) {
		super();
		this.clubId = clubId;
		this.clubName = clubName;
		this.noCourts = noCourts;
		this.city = city;
		this.pincode = pincode;
		this.clubAddress = clubAddress;
		this.clubStatus = clubStatus;
		
	}




	public int getClubId() {
		return clubId;
	}


	public void setClubId(int clubId) {
		this.clubId = clubId;
	}


	public List<CourtEntity> getObj() {
		return obj;
	}


	public void setObj(List<CourtEntity> obj) {
		this.obj = obj;
	}


	public String getClubName() {
		return clubName;
	}


	public void setClubName(String clubName) {
		this.clubName = clubName;
	}


	public int getNoCourts() {
		return noCourts;
	}


	public void setNoCourts(int noCourts) {
		this.noCourts = noCourts;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public int getPincode() {
		return pincode;
	}


	public void setPincode(int pincode) {
		this.pincode = pincode;
	}


	public String getClubAddress() {
		return clubAddress;
	}


	public void setClubAddress(String clubAddress) {
		this.clubAddress = clubAddress;
	}


	public String getClubStatus() {
		return clubStatus;
	}


	public void setClubStatus(String clubStatus) {
		this.clubStatus = clubStatus;
	}


	public OwnerDataEntity getOwnerId() {
		return ownerId;
	}


	public void setOwnerId(OwnerDataEntity ownerId) {
		this.ownerId = ownerId;
	}


	@Override
	public String toString() {
		return "ClubDetailsEntity [clubId=" + clubId + ", obj=" + obj + ", clubName=" + clubName + ", noCourts="
				+ noCourts + ", city=" + city + ", pincode=" + pincode + ", clubAddress=" + clubAddress
				+ ", clubStatus=" + clubStatus + ", ownerId=" + ownerId + "]";
	}





	
}
