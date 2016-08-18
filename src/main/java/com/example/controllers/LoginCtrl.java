package com.example.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginCtrl {

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model){		
		return "login";
	}
	
	
	@RequestMapping(value="/loginFail", method=RequestMethod.GET)
	public String loginFail(Model model){
		
		model.addAttribute("errorMessage", "Oops, there was a problem loggin in.");
		
		return "login";
	}
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(Model model){
		
		model.addAttribute("logoutMessage", "Thanks for using the app. See you next time!");

		return "logout";
	}
}
