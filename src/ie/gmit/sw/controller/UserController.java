package ie.gmit.sw.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ie.gmit.sw.email.EmailSender;
import ie.gmit.sw.email.Emailable;
import ie.gmit.sw.repo.User;
import ie.gmit.sw.repo.UserAccessLevel;
import ie.gmit.sw.repo.UserRepository;

@Controller
public class UserController {
	
	private static Logger log = Logger.getLogger(UserController.class);

	private UserRepository userRepo;
	
	@Autowired
	private MailSender mailSender;
	
	
	@Autowired
	public void setUserRepo(@Qualifier("userRepoImpl") UserRepository userRepo){
		this.userRepo = userRepo;
	}
	
	@RequestMapping(value="/docreate", method=RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User user){
		user.setPassword(user.getPassword());
		log.info("UserController--addUser => " + user);
		userRepo.addUser(user);
		
		return "home";
	}
	
	// Changed to Admin, Thanks Andrej. Will need more options for Maria on this page, We can speak about this later. 
	@RequestMapping("/admin") 
	public String showCandidates(Model model){
		List<User> users = userRepo.findAllUsers();
		model.addAttribute("users", users);
		log.info("UserController(/admin)--Number of users is: " + users.size());
		return "admin"; 
	}
	
	/**
	 * 
	 * Controller approveUser activated after pressing Approve button on admin page.
	 * If administrator approved the application user's status changed on REGISTERED, 
	 * button itself replaced by label with note "APPROVE" and user getting email with
	 * confirmation letter. 
	 * 
	 * @param request contains data from uri string that is after '?' mark.
	 * @param model container for data that need to be transfered to jsp page
	 * @return Mapping associated page (admin.jsp) and navigate user onto this page.
	 * 
	 */
	// Approve user's application for membership
	@RequestMapping(value="/approve", method=RequestMethod.GET)
	public String approveUser(HttpServletRequest request, Model model){
		
		// get all users
		List<User> users = userRepo.findAllUsers();
		
		// get user that been chosen for approvement
		User u = userRepo.findUserById(request.getParameter("u"));
		
		// set all components for sending email to the user.
		String message = "Hi "+ u.getFirstname() +",\n\nWelcome to Golf'n HomeSwap! "
					   + "Your temporary password is " + u.getPassword() + "\n"
				       + "Please click on the below link to complete registration.\n\n"
				       + "This will be the link....\n\n"
				       + "Thanks from all at The Golf'n HomeSwap team!";

		
		String to = u.getEmail();
		String subject = "Membership";
		
		// Do approve user
		// if(!UserAccessLevel.REGISTERED.equals(u.getUseraccesslevel())){
		if(!UserAccessLevel.TEMPORARY.equals(u.getUseraccesslevel())){
			//**************************************************************************
			// Change access level for user here
			//**************************************************************************
			
			// u.setUseraccesslevel(UserAccessLevel.REGISTERED);
			u.setUseraccesslevel(UserAccessLevel.TEMPORARY);
			userRepo.updateUser(u);
			
			//**************************************************************************
			// This section is for sending email to user for confirmation of approvement.
			//**************************************************************************
			Emailable email = new EmailSender(to, subject, message);
			
			// Sending email
			try{
				mailSender.send(email.getSmm());
				log.info("Mail sent to " + u.getEmail());
			}catch(Exception e){
				log.info("Error with sending");
				log.info(e.getMessage().toString());
			}
		}
		log.info("User's access level is " + u.getUseraccesslevel());
		
		// populate user's table.
		model.addAttribute("users", users);
		
		return "admin";
	}
	
	@RequestMapping("/denied")
	public String denied(){
		return "denied";
	}
}
