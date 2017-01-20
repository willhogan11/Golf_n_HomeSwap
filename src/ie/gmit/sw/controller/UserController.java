package ie.gmit.sw.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ie.gmit.sw.repo.User;
import ie.gmit.sw.repo.UserRepository;

@Controller
public class UserController {
	
	private static Logger log = Logger.getLogger(UserController.class);

	private UserRepository userRepo;
	
	@Autowired
	public void setUserRepo(@Qualifier("userRepoImpl") UserRepository userRepo){
		this.userRepo = userRepo;
	}
	
	@RequestMapping(value="/docreate", method=RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User user){
		log.info("UserController--addUser => " + user);
		userRepo.addUser(user);
		
		return "home";
	}
	
	// Changed to Admin, Thanks Andrej. Will need more options for Maria on this page, We can speak about this later. 
	@RequestMapping("/admin") 
	public String showCandidates(Model model){
		model.addAttribute("users", userRepo.getAllUsers());
		log.info("UserController--Number of users is: " + userRepo.getAllUsers().size());
		return "admin"; 
	}
	
	// Approve user's application for membership
	@RequestMapping(value="/approve", method=RequestMethod.POST)
	public String approveUser(@ModelAttribute("user") User user){
		
		return "admin";
	}
	
	@RequestMapping("/denied")
	public String denied(){
		return "denied";
	}
}
