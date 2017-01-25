package ie.gmit.sw.encrypt;

public class PasswordGenerator {

	/**
	 * Returns an instance of the generated password in the below 'generatePassword' method. 
	 * 
	 * @return String password
	 */
	public String getPassword() {
		return generatePassword();
	}
	
	/**
	 * Generates a password that is used by the user to log in initially when they receive their 
	 * confirmation email. This will need to be changed by them at a later stage. 
	 * This password is is for temporary use only, like a token. 
	 * The method is private as to preserve encapsulation, an instance is then returned using the getPassword method. 
	 * 
	 * @return String password
	 */
	private String generatePassword() {
		String password = Long.toHexString(Double.doubleToLongBits(Math.random()));
		return password;
	}
}