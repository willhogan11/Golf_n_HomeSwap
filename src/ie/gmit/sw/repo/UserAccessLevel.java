package ie.gmit.sw.repo;

/*
 * Access Levels breakdown
 * 
 * Admin: Have access to everywhere ***(need to check with Maria if Admin need access to user profile also) ***
 * Registered: User has access to their profile, can uplaod text and images and has access to visible sections of the site. 
 * Candidate: Can apply for membership to the site and see publicly visible pages only. 
 */

public enum UserAccessLevel {
	ADMIN, REGISTERED, CANDIDATE
}