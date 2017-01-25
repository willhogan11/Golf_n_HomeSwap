package ie.gmit.sw.repo;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * CustomUserDetailsService is implemented from UserDetailsService to get authenticated user
 * and check his credentials with database.
 * 
 * @author g00196984 - Andrej Lavrinovic
 *
 */
public class CustomUserDetailsService implements UserDetailsService {
	
	private Logger log = Logger.getLogger(CustomUserDetailsService.class);
	
	private UserRepository repo = new UserRepoImpl();

	/**
	 * Method loadUserByUsername locates the user based on the email (username). In the actual implementation, the search
	 * may possibly be case insensitive, or case insensitive depending on how the implementation
	 * instance is configured. In this case the UserDetails object that comes back may have
	 * a email (username) that is of a different than what was actually requested.
	 */
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = this.repo.findByEmail(username);
		log.info("User email is " + user.getEmail());
		
		org.springframework.security.core.userdetails.User userDetails = 
				new org.springframework.security.core.userdetails.User(user.getEmail(),
						user.getPassword(), true, true, true, true,
						getAuthorities(user.getUseraccesslevel().toString()));
		return userDetails;
	}

	/**
	 * Method getAuthorities used by loadUserByUsername method to get all user's authorities.
	 * 
	 * @param userAccessLevel contains a user role enum that is converted to the string.
	 * @return Returns List of user roles.
	 */
	private List<GrantedAuthority> getAuthorities(String userAccessLevel) {
		
		List<GrantedAuthority> authList = new ArrayList<GrantedAuthority>();
		authList.add(new SimpleGrantedAuthority(userAccessLevel));
		return authList;
	}
}
