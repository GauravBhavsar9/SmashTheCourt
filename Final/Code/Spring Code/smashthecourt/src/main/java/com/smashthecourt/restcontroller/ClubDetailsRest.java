package com.smashthecourt.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smashthecourt.dao.ClubDao;
import com.smashthecourt.entity.ClubDetailsEntity;
import com.smashthecourt.entity.OwnerDataEntity;

@RestController
@RequestMapping(path = "/clubDetails")
@CrossOrigin
public class ClubDetailsRest {

	@Autowired
	ClubDao club;

	//get list of city names all

	@GetMapping("/getcity")
	public List<String> getCity(){
		return club.getCity();	
	}

	//get list of all clubs

	@GetMapping("/getclubs")
	public List<ClubDetailsEntity> getClub(){
		return club.getClub();	
	}

	//get list of club names only by city

	@GetMapping("/getClubName/{ct}")
	public List<String> getClub(@PathVariable String ct) {
		return club.getclubDetails(ct);
	}

	//get List of club by city

	@GetMapping("/getClubAll/{ct}")
	public List<ClubDetailsEntity> getClubAll(@PathVariable String ct) {
		return club.getclubDetailsAll(ct);
	}


	//get club by clubId

	@GetMapping("/getclubbyid/{clubId}")
	public ClubDetailsEntity getClubById(@PathVariable int clubId) {
		return club.getclubDetailsById(clubId);
	}

	//Update Club

	@PutMapping("/updateclub/{clubId}/{clubName}/{noCourts}/{city}/{pincode}/{clubAddress}/{clubStatus}")
	public boolean updateClub(@PathVariable int clubId,@PathVariable String clubName,@PathVariable int noCourts,
			@PathVariable String city,@PathVariable int pincode,@PathVariable String clubAddress,@PathVariable String clubStatus) {

		ClubDetailsEntity clubobj=new ClubDetailsEntity(clubId,  clubName, noCourts, city, pincode, clubAddress, clubStatus);
		return club.updateclubDetails(clubobj);
	}


	//Insert Club

	@PostMapping("/insertclub/{clubName}/{noCourts}/{city}/{pincode}/{clubAddress}/{clubStatus}/{ownerId}")
	public boolean addClub(@PathVariable String clubName,@PathVariable int noCourts,
			@PathVariable String city,@PathVariable int pincode,@PathVariable String clubAddress,@PathVariable String clubStatus,
			OwnerDataEntity ownerId) {

		ClubDetailsEntity clubobj=new ClubDetailsEntity(  clubName, noCourts, city, pincode, clubAddress, clubStatus,ownerId);
		return club.addClub(clubobj);
	}

	//Delete club by clubId

	@DeleteMapping("/deleteclub/{clubId}")
	public boolean ClubById(@PathVariable int clubId) {
		return club.deleteclubById(clubId);
	}

	//get clubs by ownerId

	@GetMapping("/getclubbyownerid/{ownerId}")
	public List<ClubDetailsEntity> getClubByOwnerId(@PathVariable int ownerId) {
		return club.getclubDetailsByOwnerId(ownerId);
	}

	// get list of club names by owner id

	@GetMapping("/getclubnamesbyownerid/{ownerId}")
	public List<String> getClubNamesByOwnerId(@PathVariable int ownerId) {
		return club.getclubNamesByOwnerId(ownerId);
	}


}
