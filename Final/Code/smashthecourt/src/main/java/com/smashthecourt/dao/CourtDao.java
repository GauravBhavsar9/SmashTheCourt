package com.smashthecourt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smashthecourt.entity.CourtEntity;
import com.smashthecourt.repository.CourtRepository;

@Service
public class CourtDao {

	@Autowired
	CourtRepository repo;

	public List<CourtEntity> getCourtbyid(int clubid) {

		return repo.getbyClubid(clubid);
	}

	public CourtEntity getDetailsByCourtId(int id) {

		return repo.getCourtDetailsByCourtId(id);
	}

	public boolean deleteCourt(int id) {
		repo.deleteById(id);
		return true;
	}

	public boolean updateCourt(CourtEntity court) {

		CourtEntity oldCourt=repo.findById(court.getCourtId()).get();
		oldCourt.setCourtNo(court.getCourtNo());
		oldCourt.setDescription(court.getDescription());
		oldCourt.setCharges(court.getCharges());
		oldCourt.setStartTime(court.getStartTime());
		oldCourt.setEndTime(court.getEndTime());

		repo.save(oldCourt);
		return true;
	}

	public List<CourtEntity> getCourtByClubId(int clubId) {

		return repo.getCourtByClubId(clubId);
	}

	public boolean insertCourt(CourtEntity court) {
		repo.save(court);
		return true;
	}

}
