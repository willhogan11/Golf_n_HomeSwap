package ie.gmit.sw.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
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
	
	@Autowired
	private JavaMailSender mailSender;
	
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
		log.info("UserController(/admin)--Number of users is: " + userRepo.getAllUsers().size());
		return "admin"; 
	}
	
	// Approve user's application for membership
	@RequestMapping(value="/approve", method=RequestMethod.GET)
	public String approveUser(HttpServletRequest request, Model model){
		model.addAttribute("users", userRepo.getAllUsers());
		log.info("UserController(/approve)--Number of users is: " + userRepo.getAllUsers().size());
		
		
		User u = userRepo.getUserById(request.getParameter("u"));
		
		log.info("User's name is: " + u.getFirstname() + " " + u.getSurname());
		log.info("User's email is: " + u.getEmail());
		
		String message = "Memebership for user " + u.getFirstname() + " " + u.getSurname() + "is accepted and approved.";
		
		//JavaEmailTest email = new JavaEmailTest("m8r-fg5nv21@mailinator.com", "Approvement", message);
		
		String to = "willhogan11@hotmail.com";
		String subject = "Approvement";
		
		SimpleMailMessage smm = new SimpleMailMessage();
		smm.setTo(to);
		smm.setSubject(subject);
		smm.setText(message);
		
		mailSender.send(smm);
		
		return "admin";
	}
	
	@RequestMapping("/denied")
	public String denied(){
		return "denied";
	}
}
