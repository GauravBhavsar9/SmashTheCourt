package com.smashthecourt.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.smashthecourt.dao.OwnerDao;
import com.smashthecourt.entity.OwnerDataEntity;

@RestController
@CrossOrigin
public class OwnerRegistrationRest {

	@Autowired
	OwnerDao dao;
	
	@PostMapping(path = "/registrationrest")
	public void ownerRegistration(@RequestBody OwnerDataEntity obj) {
		dao.ownerRegistration(obj);
	}
	
	
}
