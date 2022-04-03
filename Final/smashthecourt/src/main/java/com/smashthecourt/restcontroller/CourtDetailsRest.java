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
import com.smashthecourt.dao.CourtDao;
import com.smashthecourt.entity.ClubDetailsEntity;
import com.smashthecourt.entity.CourtEntity;

@RestController
@RequestMapping(path = "/courtdetails")
@CrossOrigin
public class CourtDetailsRest {

	@Autowired
	CourtDao courtDao;
	@Autowired
	ClubDao clubDao;

	//Get List Of Courts By Owner Id
	@GetMapping("/getcourtbyownerid/{ownerId}")
	public List<CourtEntity> getCourtByOwnerId(@PathVariable int ownerId) {      

		List<ClubDetailsEntity> list = clubDao.getclubDetailsByOwnerId(ownerId);

		int clubId = 0;


		clubId = list.get(0).getClubId();
		System.out.println(clubId);


		return courtDao.getCourtByClubId(clubId);
	}



	//get list of court by club id

	@GetMapping("/getcourt/{id}")
	public List<CourtEntity> getCourtDetails(@PathVariable int id) {      

		return courtDao.getCourtbyid(id);
	}

	//get court by courtId

	@GetMapping("/getcourtbycourtid/{id}")
	public CourtEntity getCourtDetailsByCourtId(@PathVariable int id) {      

		return courtDao.getDetailsByCourtId(id);
	}

	//delete court by id

	@DeleteMapping("/deletecourt/{id}")
	public boolean deleteCourt(@PathVariable int id) {

		return courtDao.deleteCourt(id);
	}

	//update court by all details

	@PutMapping("/updatecourt/{courtId}/{courtNo}/{startTime}/{endTime}/{description}/{charges}")
	public boolean updateCourt(@PathVariable int courtId,@PathVariable int courtNo,@PathVariable int startTime,
			@PathVariable int endTime,@PathVariable String description,@PathVariable int charges) {

		CourtEntity court= new CourtEntity(courtId, courtNo, startTime, endTime, description, charges);

		return courtDao.updateCourt(court);
	}




	//insert court

	@PostMapping("/insertcourt/{courtNo}/{startTime}/{endTime}/{description}/{charges}/{clubName}")
	public boolean insertCourt(@PathVariable int courtNo,@PathVariable int startTime,
			@PathVariable int endTime,@PathVariable String description,@PathVariable int charges,@PathVariable String clubName) 
	{
		ClubDetailsEntity club = clubDao.getclubDetailsByClubName(clubName);
		CourtEntity court= new CourtEntity(courtNo, startTime, endTime, description, charges, club);
		return courtDao.insertCourt(court);

	}


}

