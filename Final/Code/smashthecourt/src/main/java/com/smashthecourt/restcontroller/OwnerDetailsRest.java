package com.smashthecourt.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smashthecourt.dao.OwnerDao;
import com.smashthecourt.entity.OwnerDataEntity;

@RestController
@RequestMapping("/ownerdetails")
@CrossOrigin	
public class OwnerDetailsRest {

	@Autowired
	OwnerDao ownerdao;

	//get owner by id

	@GetMapping(path="/getowner/{ownerId}")
	public OwnerDataEntity getDetails(@PathVariable int ownerId) {

		return ownerdao.getOwnerById(ownerId);
	}

	//delete owner by id

	/*
	 * @DeleteMapping(path="/deleteowner/{ownerId}") public boolean
	 * deleteUser(@PathVariable int userId) { return ownerdao.deleteById(ownerId); }
	 */

	//update owner

	@PutMapping("/updateowner/{ownerId}/{firstName}/{lastName}/{email}/{password}/{mobileNo}/{question}/{questionAns}/{isActive}")
	public boolean updateDetails(@PathVariable int ownerId,@PathVariable String firstName,@PathVariable String lastName,@PathVariable String email,
			@PathVariable String password,@PathVariable String mobileNo,
			@PathVariable String question,@PathVariable String questionAns,@PathVariable boolean isActive) {

		OwnerDataEntity owner=new OwnerDataEntity(ownerId, firstName, lastName, email, password, mobileNo, question, questionAns, isActive);

		return ownerdao.updateData(owner);
	}

	//owner login authentication

	@GetMapping("/reactownerlogin/{email}/{password}")
	public boolean ownerAuth(@PathVariable String email , @PathVariable String password ) {
		try {
			OwnerDataEntity ownerData = ownerdao.ownerByEmail(email);
			if(email.equals(ownerData.getEmail()) && password.equals(ownerData.getPassword()) )
			{
				return true;
			}
			else 
			{
				return false;
			}
		}
		catch(Exception e) {
			return false;
		}

	}

	//get owner by Email

	@GetMapping("/getownerbymail/{email}")
	public OwnerDataEntity getownerbymail(@PathVariable String email) {
		return ownerdao.ownerByEmail(email);
	}


}
