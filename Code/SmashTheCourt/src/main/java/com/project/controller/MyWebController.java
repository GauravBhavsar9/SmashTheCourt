package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyWebController {

	
	@GetMapping("/userlogin")
	public ModelAndView userLogin() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("userLogin");


		return mv;
	}
	
	
	@GetMapping("/ownerlogin")
	public ModelAndView ownerLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ownerLogin");

		return mv;
	}
	
	@GetMapping("/userregistration")
	public ModelAndView userRegistration() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("userRegistration");
		
		return mv;
	}
	
	@GetMapping("/ownerregistration")
	public ModelAndView ownerRegistration() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("ownerRegistration");
		
		return mv;
	}
	
	
}
