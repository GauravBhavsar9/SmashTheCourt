package com.smashthecourt.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smashthecourt.entity.OwnerDataEntity;
import com.smashthecourt.repository.OwnerRepository;

@Service
public class OwnerDao {

	@Autowired
	OwnerRepository repo;


	public void ownerRegistration(OwnerDataEntity obj) {

		repo.save(obj);

	}

	

	public OwnerDataEntity ownerByEmail(String email) {
		
		return repo.findByEmail(email);
		
	}



	public OwnerDataEntity getOwnerById(int ownerId) {
		
		return repo.findById(ownerId).get();
	}



	public boolean deleteById(int ownerId) {
		repo.deleteById(ownerId);
		return true;
	}



	public boolean updateData(OwnerDataEntity owner) {
		
		OwnerDataEntity oldOwner=repo.findById(owner.getOwnerId()).get();
		oldOwner.setFirstName(owner.getFirstName());
		oldOwner.setLastName(owner.getLastName());
		oldOwner.setEmail(owner.getEmail());
		oldOwner.setPassword(owner.getPassword());
		oldOwner.setMobileNo(owner.getMobileNo());
		oldOwner.setQuestion(owner.getQuestion());
		oldOwner.setQuestionAns(owner.getQuestionAns());
		oldOwner.setActive(owner.isActive());
		
		repo.save(oldOwner);
		return true;
	}


}
