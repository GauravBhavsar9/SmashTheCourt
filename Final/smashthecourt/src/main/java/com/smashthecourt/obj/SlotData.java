package com.smashthecourt.obj;

public class SlotData {

	private String city;
	private String club;
	private String court;
	private int month;
	private int slot;
	
	
	
	public SlotData() {
		super();
	}
	
	
	public SlotData(String city, String club, String court, int month, int slot) {
		super();
		this.city = city;
		this.club = club;
		this.court = court;
		this.month = month;
		this.slot = slot;
	}


	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getClub() {
		return club;
	}
	public void setClub(String club) {
		this.club = club;
	}
	public String getCourt() {
		return court;
	}
	public void setCourt(String court) {
		this.court = court;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getSlot() {
		return slot;
	}
	public void setSlot(int slot) {
		this.slot = slot;
	}
	@Override
	public String toString() {
		return "SlotData [city=" + city + ", club=" + club + ", court=" + court + ", month=" + month + ", slot=" + slot
				+ "]";
	}
	
	
	
}
