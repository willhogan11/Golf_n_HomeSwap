package ie.gmit.sw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHomePage(){
		return "home";
	}
	
	@RequestMapping("/login")
	public String showLoginPage(){
		return "login";
	}
}
