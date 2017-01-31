package ie.gmit.sw.controller;

import java.util.Date;
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
		user.setPassword();
		log.info("Browser: " + user.getFirstname());
		log.info("Date of membership issued -- " + user.getDateofissue().toString() + "\n");
		log.info("UserController--addUser => " + user);
		userRepo.addUser(user);
		
		return "successapply";
	}
	
	// Changed to Admin, Thanks Andrej. Will need more options for Maria on this page, We can speak about this later. 
	@RequestMapping("/admin") 
	public String showCandidates(Model model){
		log.info("===> 1) Find all users");
		List<User> users = userRepo.findAllUsers();
		log.info("===> 2) Users are foud."); 
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
		
		// get user that been chosen for approvement
		User u = userRepo.findUserById(request.getParameter("u"));
		
		// set all components for sending email to the user.
		String message = "Hi "+ u.getFirstname() +",\n\nWelcome to Golf'n Home Swap! "
					   + "Your temporary password is " + u.getPassword() + "\n"
				       + "Please click on the below link to complete registration.\n\n"
					   + "localhost:8080/golfnswap/firsttimelogin\n\n"
				       + "Thanks, from all at The Golf'n Home Swap team!";
		
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

		// get all users
		List<User> users = userRepo.findAllUsers();
		// populate user's table.
		model.addAttribute("users", users);
		
		return "admin";
	}
	
	
	/* [Will] Working on a Controller that 'DECLINE's the users application, when the button is clicked on the admin page. 
	 * - User is located
	 * - Users application status is set to 'DECLINED'
	 * - Emailed prepared and sent informing user
	 * - admin.jsp page updated with the relevant status
	 * */
	
	@RequestMapping(value="/decline", method=RequestMethod.GET)
	public String declineUser(HttpServletRequest request, Model model) {
	
		// get user that been chosen for approvement
		User u = userRepo.findUserById(request.getParameter("u"));
		
		// set all components for sending email to the user.
		String message = "Dear User, \n\nYour application to Golf'N Home Swap has been declined.\n"
				       + "For more information, please contact us on....\n\n"
				       + "Thanks, from all at The Golf'n Home Swap team!";
		
		String to = u.getEmail();
		String subject = "Membership";
		
		// decline user
		//**************************************************************************
		// Change access level for user here
		//**************************************************************************
		
		u.setUseraccesslevel(UserAccessLevel.DECLINED);
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
		log.info("User's access level is " + u.getUseraccesslevel());
		
		// get all users
		List<User> users = userRepo.findAllUsers();
		// populate user's table.
		model.addAttribute("users", users);
		
		return "admin";
	}
	
	
	
	@RequestMapping("/denied")
	public String denied(){
		return "denied";
	}
}
