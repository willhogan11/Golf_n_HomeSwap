package ie.gmit.sw.repo;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


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
	private UserAccessLevel useraccesslevel; // Created an ENUM class to hold the values for [admin, registered, candidate]
	private UserVisibility uservisibility; // Created an ENUM class to hold the values for [private, public, group]
	
	
	
	// DEPRECATED (Now using 'UserAccessLevel' instead of this)
	// private Boolean registered = false; // Flag: change to true when registered? Something like this....
	
	// DEPRECATED (Now using 'UserVisibility' instead of this)
	// private Boolean visibility;


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

	public Date getDateofissue() {
		return dateofissue;
	}

	public void setDateofissue(Date dateofissue) {
		this.dateofissue = dateofissue;
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

	// TO BE REMOVED, Using UserAccessLevel now instead
   /*public Boolean getRegistered() {
		return registered;
	}
	public void setRegistered(Boolean registered) {
		this.registered = registered;
	}*/
	
	// TO BE REMOVED, Using UserVisibility now instead
	/*public Boolean getVisibility() {
		return visibility;
	}
	public void setVisibility(Boolean visibility) {
		this.visibility = visibility;
	}*/
}