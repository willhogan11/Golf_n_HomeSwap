package ie.gmit.sw.repo;

/*
 * Access Levels breakdown
 * 
 * Admin: Have access to everywhere ***(need to check with Maria if Admin need access to user profile also) ***
 * Registered: User has access to their profile, can uplaod text and images and has access to visible sections of the site. 
 * Candidate: Can apply for membership to the site and see publicly visible pages only.
 * Declined: We need to keep track of who has been declined without removing from the database.  
 * Suspended: If for some reason there's an issue with a member, Admin can suspend the account. We will need to add another list...
 * 	......... to the admin page that allows searches on suspended accounts also.  
 */

public enum UserAccessLevel {
	ADMIN, REGISTERED, CANDIDATE, DECLINED, SUSPENDED;
}