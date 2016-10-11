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
	private Boolean registered = false; // Flag: change to true when registered? Something like this....
	
	private Boolean visibility; // This is what Maria was saying on Monday 10th Oct.....
								//...that if the user is registered, maybe they want to be invisible to others...
								//...until they make a connection with someone and then they can change visibility to true..
								// This can be tweaked to suit the application of course

	
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

	public Boolean getRegistered() {
		return registered;
	}

	public void setRegistered(Boolean registered) {
		this.registered = registered;
	}

	public Boolean getVisibility() {
		return visibility;
	}

	public void setVisibility(Boolean visibility) {
		this.visibility = visibility;
	}

	
	// Just for Testing, if required.
	public String toString() {
		return "User [id=" + id + ", firstname=" + firstname + ", surname=" + surname + ", email=" + email
				+ ", golfregnum=" + golfregnum + ", countryissued=" + countryissued + ", dateofissue=" + dateofissue
				+ ", homeclubname=" + homeclubname + ", homecluburl=" + homecluburl + ", registered=" + registered
				+ ", visibility=" + visibility + "]";
	}
}