package com.smashthecourt.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smashthecourt.dao.UserDao;
import com.smashthecourt.entity.UserDataEntity;

@RestController
@RequestMapping("/userdetails")
@CrossOrigin
public class UserDetailsRest {

	@Autowired
	UserDao userDao;
	
	//get user by id
	
	@GetMapping(path="/getuser/{userId}")
	public UserDataEntity getDetails(@PathVariable int userId) {
		
		return userDao.getUserById(userId);
	}
	
	//delete user by id
	
	@DeleteMapping(path="/deleteuser/{userId}")
	public boolean deleteUser(@PathVariable int userId) {
		return userDao.deleteById(userId);
	}
	
	//update user
	
	@PostMapping(path="/updateuser/{userId}/{firstName}/{lastName}/{email}/{password}/{mobileNo}/{gender}/{address}/{answer}")
	public boolean updateDetails(@PathVariable int userId,@PathVariable String firstName,@PathVariable String lastName,@PathVariable String email,
			@PathVariable String password,@PathVariable String mobileNo,@PathVariable String gender,@PathVariable String address,@PathVariable String answer) {
		
		UserDataEntity user=new UserDataEntity(userId, firstName, lastName, email, password, mobileNo, gender, address, "What is your School Name ?", answer);
		
		
		return userDao.updateData(user);
	}
	
	
}
