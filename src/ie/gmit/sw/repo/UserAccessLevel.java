package ie.gmit.sw.repo;

/**
 * Access Levels breakdown
 * 
 * Admin: Have access to everywhere ***(need to check with Maria if Admin need access to user profile also) ***
 * Registered: User has access to their profile, can uplaod text and images and has access to visible sections of the site. 
 * Candidate: Can apply for membership to the site and see publicly visible pages only.
 * Declined: We need to keep track of who has been declined without removing from the database.  
 * Suspended: If for some reason there's an issue with a member, Admin can suspend the account. We will need to add another list...
 * Temporary: If the user has not fully registered, ie changed their temp passsword, then this is their status. 
 * 	......... to the admin page that allows searches on suspended accounts also.
 *
 * @author Will Hogan. Modified by Andrej Lavrinovic
 */

public enum UserAccessLevel {

	ADMIN ("ADMIN"),
	REGISTERED ("REGISTERED"),
	CANDIDATE ("CANDIDATE"), 
	DECLINED ("DECLINED"),
	SUSPENDED ("SUSPENDED"),
	TEMPORARY ("TEMPORARY");
	
	private final String name;
	
	private UserAccessLevel(String s){
		name = s;
	}
	
	public boolean equalsName(String otherName){
		return name.equals(otherName);
	}
	
	public String toString(){
		return this.name;
	}
}
