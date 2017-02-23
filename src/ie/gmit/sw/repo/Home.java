package ie.gmit.sw.repo;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import ie.gmit.sw.handler.Convertable;
import ie.gmit.sw.handler.date.StringToDateConverter;


/**
 * This is Home pojo that contains each users home details  
 * 
 * @author g00318460 -  Will Hogan
 * @author g00196984 - Andrej Lavrinovic
 *
 */


@Document(collection="home")
public class Home {

	@Id
	private String id;
	private String title;
	private String homeDetails;
	private int bedrooms;
	private PropertyType propertyType;
	private boolean petFriendly;
	private int bathrooms;
	private int sleeps;
	private HomeVisibility homevisibility;
	private boolean garden = false;
	private boolean balcony = false;
	private boolean pool = false;
	private boolean cleaner= false;
	private boolean wifi = false;
	private boolean cabletv = false;
	private boolean gym = false;
	private boolean aircon = false;
	private boolean equipforkids = false;
	private boolean disabledaccess = false;
	private String address;
	private Date availableFrom;
	private Date availableTo;
	

	//private InputStream photo;
	
	
	// Default constructor
	public Home() {}
	

	// Getters and Setters for above instance variables
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getBedrooms() {
		return bedrooms;
	}


	public void setBedrooms(int bedrooms) {
		this.bedrooms = bedrooms;
	}


	public PropertyType getPropertyType() {
		return propertyType;
	}


	public void setPropertyType(PropertyType propertyType) {
		this.propertyType = propertyType;
	}


	public boolean isPetFriendly() {
		return petFriendly;
	}


	public void setPetFriendly(boolean petFriendly) {
		this.petFriendly = petFriendly;
	}


	public int getBathrooms() {
		return bathrooms;
	}


	public void setBathrooms(int bathrooms) {
		this.bathrooms = bathrooms;
	}


	public int getSleeps() {
		return sleeps;
	}


	public void setSleeps(int sleeps) {
		this.sleeps = sleeps;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getHomeDetails() {
		return homeDetails;
	}


	public void setHomeDetails(String homeDetails) {
		this.homeDetails = homeDetails;
	}
	
	
	public HomeVisibility getHomevisibility() {
		return homevisibility;
	}


	public void setHomevisibility(HomeVisibility homevisibility) {
		this.homevisibility = homevisibility;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getAvailableFrom() {
		DateFormat df = new SimpleDateFormat("d MMM yyyy");
		return df.format(this.availableFrom);
	}


	public void setAvailableFrom(String availableFrom) {
		Convertable c = new StringToDateConverter();
		this.availableFrom = (Date)(c.convert(availableFrom));
	}


	public String getAvailableTo() {
		DateFormat df = new SimpleDateFormat("d MMM yyyy");
		return df.format(this.availableTo);
	}


	public void setAvailableTo(String availableTo) {
		Convertable c = new StringToDateConverter();
		this.availableTo = (Date)(c.convert(availableTo));
	}

	
//	public InputStream getPhoto() {
//		return photo;
//	}
//
//
//	public void setPhoto(InputStream photo) {
//		this.photo = photo;
//	}


	public boolean isGarden() {
		return garden;
	}


	public void setGarden(boolean garden) {
		this.garden = garden;
	}


	public boolean isBalcony() {
		return balcony;
	}


	public void setBalcony(boolean balcony) {
		this.balcony = balcony;
	}


	public boolean isPool() {
		return pool;
	}


	public void setPool(boolean pool) {
		this.pool = pool;
	}


	public boolean isCleaner() {
		return cleaner;
	}


	public void setCleaner(boolean cleaner) {
		this.cleaner = cleaner;
	}


	public boolean isWifi() {
		return wifi;
	}


	public void setWifi(boolean wifi) {
		this.wifi = wifi;
	}


	public boolean isCabletv() {
		return cabletv;
	}


	public void setCabletv(boolean cabletv) {
		this.cabletv = cabletv;
	}


	public boolean isGym() {
		return gym;
	}


	public void setGym(boolean gym) {
		this.gym = gym;
	}


	public boolean isAircon() {
		return aircon;
	}


	public void setAircon(boolean aircon) {
		this.aircon = aircon;
	}


	public boolean isEquipforkids() {
		return equipforkids;
	}


	public void setEquipforkids(boolean equipforkids) {
		this.equipforkids = equipforkids;
	}


	public boolean isDisabledaccess() {
		return disabledaccess;
	}


	public void setDisabledaccess(boolean disabledaccess) {
		this.disabledaccess = disabledaccess;
	}


	/*
	 * (non-Javadoc)
	 * @see java.lang.Object#toString()
	 * 
	 * Generated by Eclipse
	 */
	@Override
	public String toString() {
		return "Home [title=" + title + ", homeDetails=" + homeDetails + ", bedrooms=" + bedrooms + ", propertyType="
				+ propertyType + ", petFriendly=" + petFriendly + ", bathrooms=" + bathrooms + ", sleeps=" + sleeps
				+ ", homevisibility=" + homevisibility + ", garden=" + garden + ", balcony=" + balcony + ", pool="
				+ pool + ", cleaner=" + cleaner + ", wifi=" + wifi + ", cabletv=" + cabletv + ", gym=" + gym
				+ ", aircon=" + aircon + ", equipforkids=" + equipforkids + ", disabledaccess=" + disabledaccess
				+ ", address=" + address + ", availableFrom=" + availableFrom + ", availableTo=" + availableTo + "]";
	}

}