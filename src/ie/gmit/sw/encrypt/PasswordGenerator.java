package ie.gmit.sw.encrypt;

public class PasswordGenerator {

	private String password;

	/**
	 * Returns the password
	 * 
	 * @return String password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * Sets the String password value
	 * 
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 * Generates a password that is used by the user to log in initially when they receive their 
	 * confirmation email. This will need to be changed by them at a later stage. 
	 * This password is is for temporary use only, like a token. 
	 * 
	 * @return String password
	 */
	public String generatePassword() {
		password = Long.toHexString(Double.doubleToLongBits(Math.random()));
		return password;
	}
}