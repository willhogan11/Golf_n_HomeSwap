package ie.gmit.sw.repo;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import ie.gmit.sw.encrypt.PasswordGenerator;
import ie.gmit.sw.handler.Convertable;
import ie.gmit.sw.handler.date.StringToDateConverter;

/**
 * This is User pojo that contains all user details including sensitive information
 * such as authentication credentials and role for authorisation access.
 * 
 * @author g0318460 -  Will Hogan
 * @author g00196984 - Andrej Lavrinovic
 *
 */

@Document(collection="user")
public class User {
	
	@Id
	private String id; // Delegate id creation to Mongodb, like we saw earlier today (11th Oct)
	private String firstname;	
	private String surname;
	private String email;	
	private String golfregnum;
	private String countryissued;
	private Date dateofissue;
	private String homeclubname;
	private String homecluburl;
	private String password;
	// private String permanentPassword;
	
	
	/* Created an ENUM class to hold the values for [admin, registered, candidate, declined, suspended, temporary]
	   Also set default value to be CANDIDATE until approved */
	private UserAccessLevel useraccesslevel = UserAccessLevel.CANDIDATE; 
	
	// Created an ENUM class to hold the values for [private, public, group], Set to private as default
	private UserVisibility uservisibility = UserVisibility.PRIVATE; 
	
	// Constructors
	/**
	 * Default constructor used for creation User entity
	 */
	public User() {}
	
	
	// Getters & Setters
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGolfregnum() {
		return golfregnum;
	}

	public void setGolfregnum(String golfregnum) {
		this.golfregnum = golfregnum;
	}

	public String getCountryissued() {
		return countryissued;
	}

	public void setCountryissued(String countryissued) {
		this.countryissued = countryissued;
	}

	public String getDateofissue() {
		DateFormat df = new SimpleDateFormat("d MMM yyyy");
		return df.format(this.dateofissue);
	}

	public void setDateofissue(String dateofissue) {
		Convertable c = new StringToDateConverter();
		this.dateofissue = (Date)(c.convert(dateofissue));
	}

	public String getHomeclubname() {
		return homeclubname;
	}

	public void setHomeclubname(String homeclubname) {
		this.homeclubname = homeclubname;
	}

	public String getHomecluburl() {
		return homecluburl;
	}

	public void setHomecluburl(String homecluburl) {
		this.homecluburl = homecluburl;
	}
	
	public UserAccessLevel getUseraccesslevel() {
		return useraccesslevel;
	}

	public void setUseraccesslevel(UserAccessLevel useraccesslevel) {
		this.useraccesslevel = useraccesslevel;
	}
	
	public UserVisibility getUservisibility() {
		return uservisibility;
	}

	public void setUservisibility(UserVisibility uservisibility) {
		this.uservisibility = uservisibility;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	public void setPermanentPassword(String password) {
		this.password = password;
	}
	
	public String getPermanentPassword() {
		return password;
	}

	public void setPassword() {
		PasswordGenerator passwordGenerator = new PasswordGenerator();
		this.password = passwordGenerator.getPassword();
	}
	
	public String printDateOfIssue(Date dateofissue){
		String date = null;
		
		return date;
	}
	
	// For Testing only....
	@Override
	public String toString() {
		return "User [firstname=" + firstname + ", surname=" + surname + ", password=" + password + "]";
	}
}
