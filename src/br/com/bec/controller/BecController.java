package br.com.bec.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BecController {

	@RequestMapping("index")
	public String loginForm() {
		return "index";
	}
	
	@RequestMapping("about")
	public String about() {		
		return "about";
	}
	
	@RequestMapping("contact")
	public String contact() {		
		return "contact";
	}	
	
	@RequestMapping("login")
	public String login() {		
		return "login";
	}	
}
