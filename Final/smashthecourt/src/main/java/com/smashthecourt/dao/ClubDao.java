package com.smashthecourt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smashthecourt.entity.ClubDetailsEntity;
import com.smashthecourt.repository.ClubDetailsRepository;
import com.smashthecourt.repository.CourtRepository;

@Service
public class ClubDao {

	@Autowired
	ClubDetailsRepository repo;

	@Autowired
	CourtRepository courtRepo;

	public List<String> getCity() {

		List<String> obj = repo.findAllCity();

		return obj;
	}

	public List<ClubDetailsEntity> getClub() {
		List<ClubDetailsEntity> obj = repo.findAll();
		return obj;
	}

	public List<String> getclubDetails(String city) {

		return repo.getClubs(city);
	}

	public List<ClubDetailsEntity> getclubDetailsAll(String ct) {
		// TODO Auto-generated method stub
		return repo.getClubsAll(ct);
	}

	public ClubDetailsEntity getclubDetailsById(int clubId) {

		return repo.findById(clubId).get();
	}

	public boolean updateclubDetails(ClubDetailsEntity clubobj) {
		ClubDetailsEntity oldclub=repo.findById(clubobj.getClubId()).get();
		oldclub.setClubName(clubobj.getClubName());
		oldclub.setCity(clubobj.getCity());
		oldclub.setClubAddress(clubobj.getClubAddress());
		oldclub.setClubStatus(clubobj.getClubStatus());
		oldclub.setNoCourts(clubobj.getNoCourts());
		oldclub.setPincode(clubobj.getPincode());

		repo.save(oldclub);
		return true;
	}

	public boolean addClub(ClubDetailsEntity clubobj) {
		repo.save(clubobj);
		return true;
	}

	//paile club id warun court find krun delete
	//nantr club delete
	public boolean deleteclubById(int clubId) {
		courtRepo.deleteCourtByClubId(clubId);
		repo.deleteById(clubId);
		return true;
	}

	public List<ClubDetailsEntity> getclubDetailsByOwnerId(int ownerId) {

		return repo.getClubsAllByOwnerId(ownerId);
	}

	public List<String> getclubNamesByOwnerId(int ownerId) {

		return repo.getClubNamesByOwnerId(ownerId);
	}

	public ClubDetailsEntity getclubDetailsByClubName(String clubName) {

		return repo.getClubByClubName(clubName);
	}

	
	

}
