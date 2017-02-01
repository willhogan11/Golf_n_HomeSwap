package ie.gmit.sw.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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

	// method to identify active user.
	// used to define is user logged in or not.
	private String getUsername(Principal principal){
		return principal.getName();
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
	public String showCandidates(Model model, Principal principal){
		
		/*
		 * Authentication section is here
		 * if user is logged in or otherwise do something on jsp page
		 * 
		 * User need to be recognised and displayed
		 */
		String email = getUsername(principal);
		model.addAttribute("email", email);
		
		// retrieving user infoattributeValue
		User user = userRepo.findByEmail(email);
		
		// bind user information
		String username = user.getFirstname() + " " + user.getSurname();
		model.addAttribute("username", username);
		model.addAttribute("role", user.getUseraccesslevel().toString());
		
		log.info("===> User " + user.getFirstname() + " " + user.getSurname());
		
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
	public String approveUser(HttpServletRequest request, Model model, Principal principal){
		
		/*
		 * Authentication section is here
		 * if user is logged in or otherwise do something on jsp page
		 * 
		 * User need to be recognised and displayed
		 */
		String email1 = getUsername(principal);
		model.addAttribute("email", email1);
		
		// retrieving user infoattributeValue
		User user = userRepo.findByEmail(email1);
		
		// bind user information
		String username = user.getFirstname() + " " + user.getSurname();
		model.addAttribute("username", username);
		model.addAttribute("role", user.getUseraccesslevel().toString());
		
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
	 * - Email prepared and sent informing user
	 * - admin.jsp page updated with the relevant status
	 * */
	
	@RequestMapping(value="/decline", method=RequestMethod.GET)
	public String declineUser(HttpServletRequest request, Model model, Principal principal) {
		
		/*
		 * Authentication section is here
		 * if user is logged in or otherwise do something on jsp page
		 * 
		 * User need to be recognised and displayed
		 */
		String email1 = getUsername(principal);
		model.addAttribute("email", email1);
		
		// retrieving user infoattributeValue
		User user = userRepo.findByEmail(email1);
		
		// bind user information
		String username = user.getFirstname() + " " + user.getSurname();
		model.addAttribute("username", username);
		model.addAttribute("role", user.getUseraccesslevel().toString());
	
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
	
	
	/* [Will] When the admin personel click the suspend button, the users account is suspended until further notice. 
	 * - User is located
	 * - Users application status is set to 'SUSPENDED'
	 * - Email prepared and sent informing user
	 * - admin.jsp page updated with the relevant status
	 * */
	
	@RequestMapping(value="/suspend", method=RequestMethod.GET)
	public String suspendUser(HttpServletRequest request, Model model, Principal principal) {
		
		/*
		 * Authentication section is here
		 * if user is logged in or otherwise do something on jsp page
		 * 
		 * User need to be recognised and displayed
		 */
		String email1 = getUsername(principal);
		model.addAttribute("email", email1);
		
		// retrieving user infoattributeValue
		User user = userRepo.findByEmail(email1);
		
		// bind user information
		String username = user.getFirstname() + " " + user.getSurname();
		model.addAttribute("username", username);
		model.addAttribute("role", user.getUseraccesslevel().toString());
	
		// get user that been chosen for approvement
		User u = userRepo.findUserById(request.getParameter("u"));
		
		// set all components for sending email to the user.
		String message = "Dear User, \n\nYour account with Golf'N Home Swap has been Suspended.\n"
				       + "For more information, please contact us on....\n\n"
				       + "Thanks, from all at The Golf'n Home Swap team!";
		
		String to = u.getEmail();
		String subject = "Membership";
		
		// suspend user
		//**************************************************************************
		// Change access level for user here
		//**************************************************************************
		
		u.setUseraccesslevel(UserAccessLevel.SUSPENDED);
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
	
	
	
	/* [Will] When the admin personel click the reactivate button, the users account is reinstated with the previous level of privileges. 
	 * - User is located
	 * - Users application status is set to 'APPROVED'
	 * - Email prepared and sent informing user
	 * - admin.jsp page updated with the relevant status
	 * */
	@RequestMapping(value="/reactivate", method=RequestMethod.GET)
	public String reinstateUser(HttpServletRequest request, Model model, Principal principal) {
		
		/*
		 * Authentication section is here
		 * if user is logged in or otherwise do something on jsp page
		 * 
		 * User need to be recognised and displayed
		 */
		String email1 = getUsername(principal);
		model.addAttribute("email", email1);
		
		// retrieving user infoattributeValue
		User user = userRepo.findByEmail(email1);
		
		// bind user information
		String username = user.getFirstname() + " " + user.getSurname();
		model.addAttribute("username", username);
		model.addAttribute("role", user.getUseraccesslevel().toString());
		
	
		// get user that been chosen for approvement
		User u = userRepo.findUserById(request.getParameter("u"));
		
		// set all components for sending email to the user.
		String message = "Dear User, \n\nYour account with Golf'N Home Swap has been Reactivated.\n\n"
				       + "Thanks, from all at The Golf'n Home Swap team!";
		
		String to = u.getEmail();
		String subject = "Membership";
		
		// reactivate user
		//**************************************************************************
		// Change access level for user here
		//**************************************************************************
		
		
			// N O T E::::
			// *************   This will need to be fully changed to 'REGISTERED' when we have that implemented ********************
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
		log.info("User's access level is " + u.getUseraccesslevel());
		
		// get all users
		List<User> users = userRepo.findAllUsers();
		// populate user's table.
		model.addAttribute("users", users);
		
		return "admin";
	}
	
	
	@RequestMapping(value="/registercontroller", method=RequestMethod.POST)
	public String registerUser(HttpServletRequest request){
		
		/*
		 * Steps Needed: 
		 * 1. Get the various parameters from the 'firsttimelogin' form. [Will Completed]
		 * 2. Check the username (email) / Password to see if they are in the database. [Will Completed]
		 * 3. If valid, overwrite the temporary password with new password, if not inform user of issue. 
		 * 4. Upon successful registration, redirect to the Dashboard.jsp page. 
		 * */

		String username = request.getParameter("j_username");
		String tempPassword = request.getParameter("j_tempPassword");
		String newPassword = request.getParameter("j_newPassword");
		
		log.info("Form Params:\n" + username + "\n" + tempPassword + "\n" + newPassword);
		
		User user = userRepo.findByEmail(username);
		
		log.info("\nEmail username and password in mongo ==>" + user.getEmail() + " " + user.getPassword());
	
		try {
			if(user.getEmail().equals(username)) {
				log.info("Email and username email fields are the same....");
				
				// Maybe exit here as it doesn't exist Andrej...
				
				if(user.getPassword().equals(tempPassword)){
					log.info("Password in mongo and field password are the same....");
					
					user.setPermanentPassword(newPassword);
					user.setUseraccesslevel(UserAccessLevel.REGISTERED);
					userRepo.updateUser(user);
					
					log.info("Users new Password ==>" + user.getPermanentPassword());
					
					return "dashboard";
				}
			}
			else {
				// Stop page from displaying error....
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "firsttimelogin";
	}
	
	
	
	@RequestMapping("/denied")
	public String denied(){
		return "denied";
	}
}
