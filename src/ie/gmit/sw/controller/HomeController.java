package ie.gmit.sw.controller;

import java.security.Principal;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ie.gmit.sw.repo.Home;
import ie.gmit.sw.repo.HomeRepository;
import ie.gmit.sw.repo.User;
import ie.gmit.sw.repo.UserRepository;

@Controller
public class HomeController {

	private static Logger log = Logger.getLogger(HomeController.class);
	private UserRepository userRepo;
	private HomeRepository homeRepo;

	@Autowired
	public void setUserRepo(@Qualifier("userRepoImpl") UserRepository userRepo){
		this.userRepo = userRepo;
	}

	@Autowired
	public void setHomeRepo(@Qualifier("homeRepoImpl") HomeRepository homeRepo){
		this.homeRepo = homeRepo;
	}

	@RequestMapping("/")
	public String showHomePage(Model model, Principal principal){

		/*
		 * Authentication section is here
		 * if user is logged in or otherwise do something on jsp page
		 * 
		 * User need to be recognised and displayed
		 */
		String email = null;
		try{
			email = getUsername(principal);
			
			log.info("Logged user's email: " + email);

			// retrieving user infoattributeValue
			User user = userRepo.findByEmail(email);
			log.info("User: " + user.toString());
			// bind user information
			String username = user.getFirstname() + " " + user.getSurname();
			model.addAttribute("username", username);
			model.addAttribute("role", user.getUseraccesslevel().toString());
			model.addAttribute("email", email);
		}catch(NullPointerException npe){
			model.addAttribute("email", null);
		}

		
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
	public String showApplyPage(Model model){
		model.addAttribute("userEmailIsNotUnique", null);
		return "apply";
	}
	
	@RequestMapping("/dashboard")
	public String showDashboard(Model model, Principal principal){

		/*
		 * Authentication section is here
		 * if user is logged in or otherwise do something on jsp page
		 * 
		 * User need to be recognised and displayed
		 */
		String email = null;
		try{
			email = getUsername(principal);
			
			log.info("Logged user's email: " + email);

			// retrieving user infoattributeValue
			User user = userRepo.findByEmail(email);
			log.info("User: " + user.toString());
			// bind user information
			String username = user.getFirstname() + " " + user.getSurname();
			model.addAttribute("username", username);
			model.addAttribute("email", email);
		}catch(NullPointerException npe){
			model.addAttribute("email", null);
		}
		
		return "dashboard";
	}

	@RequestMapping("/docreatehome")
	public String createHome(@ModelAttribute("home") Home home, Model model, Principal principal){
		
		log.info("Testing for controller >>> success");
		log.info("Home >>> \n" + home.toString());
		
		// 1.1) Find user email
		String userEmail = getUsername(principal);
		
		// 1.2) Get user info
		// retrieving user infoattributeValue
		User user = userRepo.findByEmail(userEmail);
		log.info("User: " + user.toString());
		// bind user information
		String username = user.getFirstname() + " " + user.getSurname();
		model.addAttribute("username", username);
		model.addAttribute("email", userEmail);
		
		// 2) Link home to the user
		home.setUserEmail(userEmail);
		
		// 3) Add home to the db:
		homeRepo.addHome(home);
		
		return "dashboard";
	}
	
	@RequestMapping("/firsttimelogin")
	public String showFirsttimeLogin(){
		return "firsttimelogin";
	}
	
	@RequestMapping("/addhomewizard")
	public String showaddHomeWizard(){
		return "addhomewizard";
	}
	
	@RequestMapping("/addhome")
	public String showaddHome(){
		return "addhome";
	}
	
	@RequestMapping("/homepagecopy")
	public String showhomepagecopy(){
		return "homepagecopy";
	}
	
	@RequestMapping("/TempHomeDetails")
	public String showTempHomeDetails(){
		return "TempHomeDetails";
	}
	
	@RequestMapping("/addlocation")
	public String showaddlocation(){
		return "addlocation";
	}
	
	@RequestMapping("/availability")
	public String showavailability(){
		return "availability";
	}
	
	@RequestMapping("/addphotos")
	public String showaddphotos(){
		return "addphotos";
	}
	
	

	// method to identify active user.
	// used to define is user logged in or not.
	private String getUsername(Principal principal){
		return principal.getName();
	}
}
