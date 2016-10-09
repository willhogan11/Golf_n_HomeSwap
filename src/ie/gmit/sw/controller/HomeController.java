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
	
	@RequestMapping("/logout")
	public String showLogoutPage(){
		return "logout";
	}
	
	@RequestMapping("/whatitis")
	public String showWhatitisPage(){
		return "whatitis";
	}
	
	@RequestMapping("/howitworks")
	public String showHowitworksPage(){
		return "howitworks";
	}
	
	@RequestMapping("/price")
	public String showPricePage(){
		return "price";
	}
	
	@RequestMapping("/faq")
	public String showFaqPage(){
		return "faq";
	}
	
	@RequestMapping("/apply")
	public String showApplyPage(){
		return "apply";
	}
}
