package com.smashthecourt.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.smashthecourt.bll.Mail;
import com.smashthecourt.dao.OwnerDao;
import com.smashthecourt.dao.UserDao;
import com.smashthecourt.entity.OwnerDataEntity;
import com.smashthecourt.entity.UserDataEntity;
import com.smashthecourt.obj.SlotData;

@Controller
public class MyWebController {

	@Autowired
	OwnerDao ownerDao;

	@Autowired	
	UserDao userDao;

	@Autowired
	Mail mail;



	@GetMapping("/about")
	public ModelAndView about() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("about");

		return mv;
	}


	@GetMapping("/contact")
	public ModelAndView contact() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("contact");

		return mv;
	}
	@GetMapping("/userlogin")
	public ModelAndView userLogin() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("userlogin");

		return mv;
	}

	//	He Baki AAhe karun ghe


	@PostMapping("/userloginauthentication")
	public ModelAndView userLoginAuthentication(HttpServletRequest request ,@ModelAttribute("user")UserDataEntity user) {

		UserDataEntity userData=userDao.userByEmail(user.getEmail());
		ModelAndView mv = new ModelAndView();

		System.out.println(user.getEmail()+" "+user.getPassword());

		if(user.getEmail().equals(userData.getEmail()) && user.getPassword().equals(userData.getPassword()) ) {

			request.getSession().setAttribute("user", userData);

			mv.setViewName("index");
			return mv;
		}
		else {
			mv.setViewName("userlogin");
			return mv;
		}
	}


	@GetMapping("/ownerlogin")
	public ModelAndView ownerLogin(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView();

		if(request.getSession().getAttribute("owner") == null ) {
			mv.setViewName("ownerlogin");
			return mv;
		}
		else {			
			mv.setViewName("index");
			return mv;
		}
	}


	@PostMapping("/ownerloginauthentication")
	public ModelAndView ownerLoginAuthentication(HttpServletRequest request ,@ModelAttribute("owner")OwnerDataEntity owner) {

		OwnerDataEntity ownerData = ownerDao.ownerByEmail(owner.getEmail());

		ModelAndView mv = new ModelAndView();

		System.out.println(owner.getEmail()+" "+owner.getPassword());

		if(owner.getEmail().equals(ownerData.getEmail()) && owner.getPassword().equals(ownerData.getPassword()) ) {

			request.getSession().setAttribute("owner", ownerData);

			mv.setViewName("index");
			return mv;
		}
		else {
			mv.setViewName("ownerlogin");
			return mv;
		}
	}


	@GetMapping("/ownerlogout")
	public ModelAndView ownerlogout(HttpServletRequest request) {

		request.getSession().invalidate();
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index");

		return mv;
	}

	@GetMapping("/userlogout")
	public ModelAndView userlogout(HttpServletRequest request) {

		request.getSession().invalidate();
		ModelAndView mv = new ModelAndView();

		mv.setViewName("index");

		return mv;
	}


	@GetMapping("/services")
	public ModelAndView services() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("services");

		return mv;
	}


	@GetMapping("/userregistration")
	public ModelAndView userRegistration() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("userRegistration");

		return mv;
	}


	@GetMapping("/ownerRegistration")
	public ModelAndView ownerRegistration() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("ownerRegistration");

		return mv;
	}


	@GetMapping("/slotBooking")
	public ModelAndView bookNow() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("slotBooking");

		return mv;
	}


	@GetMapping("/success")
	public ModelAndView sucess() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("sucessfull");

		return mv;
	}

	@PostMapping("/slotBooking")
	public ModelAndView bookNowData(HttpServletRequest request ,@RequestParam String city , @RequestParam String club ,@RequestParam String court ,@RequestParam int month, @RequestParam int slot,@RequestParam int amount) {

		ModelAndView mv = new ModelAndView();
		

		if(request.getSession().getAttribute("user")!=null) {
			SlotData data=new SlotData(city, club, court, month, slot);
			mv.addObject("city", data.getCity());
			mv.addObject("club", data.getClub());
			mv.addObject("court", data.getCourt());
			mv.addObject("month", data.getMonth());
			mv.addObject("slot", data.getSlot());
			mv.addObject("amount", amount);
			mv.setViewName("payment");
		}
		else {
			mv.setViewName("userlogin");
		}

		return mv;
	}


	@GetMapping(path = "/ownerregistrationdata")
	public ModelAndView ownerRegistration(@RequestParam String firstName ,@RequestParam String lastName ,@RequestParam String email,@RequestParam String password,@RequestParam String mobileNo,@RequestParam String question,@RequestParam String questionAns ) {

		OwnerDataEntity obj =new OwnerDataEntity(firstName, lastName, email, password, mobileNo, question, questionAns, true);



		ownerDao.ownerRegistration(obj);

		ModelAndView mv = new ModelAndView();

		mv.setViewName("index");
		return mv;
	}


	@GetMapping(path = "/userregistrationdata")
	public ModelAndView userRegistration( @RequestParam String firstName ,@RequestParam String lastName ,@RequestParam String email,@RequestParam String password,@RequestParam String mobileNo,@RequestParam String gender,@RequestParam String address,@RequestParam String question,@RequestParam String questionAns ) {

		UserDataEntity obj = new UserDataEntity(firstName, lastName, email, password, mobileNo, gender, address, question, questionAns);

		userDao.userRegistration(obj);

		ModelAndView mv = new ModelAndView();

		mv.setViewName("userlogin");
		return mv;
	}


	@GetMapping("/feedback")
	public ModelAndView feedback() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("feedback");

		return mv;
	}

	@GetMapping("/ownerforgotpassword")
	public ModelAndView ownerForgotPassword() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("forgotPassword");

		return mv;
	}


	@PostMapping("/ownerforgotpassword")
	public ModelAndView ownerForgotPassword(@ModelAttribute("owner")OwnerDataEntity owner ) {

		OwnerDataEntity ownerobj = ownerDao.ownerByEmail(owner.getEmail());

		String email = owner.getEmail();
		String question = owner.getQuestion();
		String answer = owner.getQuestionAns();



		if(ownerobj!=null && ownerobj.getQuestion().equals(question) && ownerobj.getQuestionAns().equals(answer)) {

			ModelAndView mv = new ModelAndView();

			mail.ownerForgotPassword(email,ownerobj.getPassword());

			mv.setViewName("ownerlogin");

			System.out.println("First Stage");
			return mv;
		}

		else {
			ModelAndView mv = new ModelAndView();
			mv.addObject("Message","Wrong Credentials");
			mv.setViewName("forgotPassword");
			return mv;			
		}

	}


	@GetMapping("/userforgotpassword")
	public ModelAndView userForgotPassword() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("userForgotPassword");

		return mv;
	}


	@PostMapping("/userforgotpassword")
	public ModelAndView userForgotPassword(@ModelAttribute("user")UserDataEntity user) {

		UserDataEntity userobj = userDao.userByEmail(user.getEmail());

		String email = user.getEmail();
		String question = user.getQuestion();
		String answer = user.getAnswer();

		System.out.println("Here I Am In User Forgot "+email+question+answer);


		if(userobj!=null && userobj.getQuestion().equals(question) && userobj.getAnswer().equals(answer)) {

			ModelAndView mv = new ModelAndView();

			mail.userForgotPassword(email,userobj.getPassword());

			mv.setViewName("userlogin");

			System.out.println("First Stage");
			return mv;
		}

		else {
			ModelAndView mv = new ModelAndView();
			mv.addObject("Message","Wrong Credentials");
			mv.setViewName("userForgotPassword");
			return mv;			
		}
	}


	@GetMapping("/payment")
	public ModelAndView payment(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("payment");

		return mv;
	}

	//	@PostMapping("/payment")
	//	public ModelAndView payment() {
	//
	//		ModelAndView mv = new ModelAndView();
	//
	//		mv.setViewName("payment");
	//
	//		return mv;
	//	}


	@GetMapping("/temp")
	public ModelAndView temp() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("temp");

		return mv;
	}
	
	@GetMapping("/userdashboard")
	public ModelAndView userDashBoard() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("userDashboard");

		return mv;
	}
	
	
	
	
//	//update user
//	
//	@GetMapping("/updateuser/{userId}/{firstName}/{lastName}/{email}/{password}/{mobileNo}/{gender}/{address}/{question}/{answer}")
//	public ModelAndView updateDetails(@PathVariable int userId,@PathVariable String firstName,@PathVariable String lastName,@PathVariable String email,
//			@PathVariable String password,@PathVariable String mobileNo,@PathVariable String gender,@PathVariable String address,
//			@PathVariable String question,@PathVariable String answer) {
//		
//		UserDataEntity user=new UserDataEntity(userId, firstName, lastName, email, password, mobileNo, gender, address, question, answer);
//		
//		ModelAndView mv = new ModelAndView();
//
//		mv.setViewName("userDashboard");
//
//		userDao.updateData(user);
//		
//		return mv;
//	}

	//	/*
	//	 * @GetMapping("/paymentdetails/{city}/{club}/{court}/{month}/{slot}") public
	//	 * ModelAndView paymentDetails(@PathVariable String city,@PathVariable String
	//	 * club,@PathVariable int court,@PathVariable int month,@PathVariable int slot)
	//	 * {
	//	 * 
	//	 * System.out.println(city + " " + club + " " + court + " " + month + " " +
	//	 * slot); ModelAndView mv = new ModelAndView();
	//	 * 
	//	 * mv.setViewName("index");
	//	 * 
	//	 * return mv; }
	//	 */

	
	
	
}
