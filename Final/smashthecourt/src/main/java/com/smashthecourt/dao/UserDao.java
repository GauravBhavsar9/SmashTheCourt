package com.smashthecourt.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smashthecourt.entity.UserDataEntity;
import com.smashthecourt.repository.UserDataRepository;

@Service
public class UserDao {

	@Autowired
	UserDataRepository repo;


	public void userRegistration(UserDataEntity obj) {

		repo.save(obj);

	}


	public UserDataEntity userByEmail(String email) {

		return repo.findByEmail(email);

	}


	public boolean updateData(UserDataEntity user) {
		UserDataEntity oldUser=repo.findById(user.getUserId()).get();
		oldUser.setFirstName(user.getFirstName());
		oldUser.setLastName(user.getLastName());
		oldUser.setEmail(user.getEmail());
		oldUser.setPassword(user.getPassword());
		oldUser.setMobileNo(user.getMobileNo());
		oldUser.setGender(user.getGender());
		oldUser.setAddress(user.getAddress());
		oldUser.setQuestion(user.getQuestion());
		oldUser.setAnswer(user.getAnswer());
		
		repo.save(oldUser);
		return true;
	}


	public UserDataEntity getUserById(int userId) {
		
		return repo.findById(userId).get();
	}


	public boolean deleteById(int userId) {
		
		repo.deleteById(userId);
		return true;
	}

}
