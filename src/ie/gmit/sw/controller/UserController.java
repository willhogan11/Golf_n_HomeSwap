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
	
	@RequestMapping("/candidates") // For Will ==> change the name of page if its different
	public String showCandidates(Model model){
		model.addAttribute("users", userRepo.getAllUsers());
		log.info("UserController--Number of users is: " + userRepo.getAllUsers().size());
		return "candidates"; // For Will ==> change the name of page if its different
	}
}
