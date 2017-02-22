package ie.gmit.sw.repo;

import java.io.InputStream;
import java.util.Date;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

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
	private UserVisibility uservisibility;
	
	
	/* We need to discuss the best way to implement "homeFeatures" below, i'm sure there is something more efficient with Spring
	/* Essentially, the user can have multiple features in their home, e.g. Balcony AND pool and when the user ticks the boxes to add them, 
	 * we need to be able to store them and add them accordingly. 
	 * 
	 * I have commented out the main method below, but for testing it allows multiple values to ba added from the enum to the arraylist.
	 * We could just return the list using getters and setters or delegate methods etc, when done. Again, Andrej you may see a better way. 
	 * */
	
	
	// private List<HomeFeatures> homeFeatures;
	
	
	private boolean garden;
	private boolean balcony;
	private boolean pool;
	private boolean cleaner;
	private boolean wifi;
	private boolean cabletv;
	private boolean gym;
	private boolean aircon;
	private boolean equipforkids;
	private boolean disabledaccess;

	private String zipCode;
	private String address1;
	private String address2;
	private String address3;
	private String address4;
	private Date availableFrom;
	private Date availableTo;
	private InputStream photo;
	
	
	// Default constructor
	public Home() {
		super();
	}
	
	
	// Testing only, uncomment as required.... 
	/*public static void main(String[] args) {
		
		List<HomeFeatures> homeFeatures;
		
		homeFeatures = new ArrayList<HomeFeatures>();
		homeFeatures.add(HomeFeatures.AIRCON);
		homeFeatures.add(HomeFeatures.BALCONY);
		homeFeatures.add(HomeFeatures.WIFI);
		
		for (HomeFeatures hf : homeFeatures) {
			System.out.println("Users Home has : " + hf);
		}
	}*/


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


//	public List<HomeFeatures> getHomeFeatures() {
//		return homeFeatures;
//	}
//
//
//	public void setHomeFeatures(List<HomeFeatures> homeFeatures) {
//		this.homeFeatures = homeFeatures;
//	}
	
	
	public UserVisibility getUservisibility() {
		return uservisibility;
	}

	public void setUservisibility(UserVisibility uservisibility) {
		this.uservisibility = uservisibility;
	}


	public String getZipCode() {
		return zipCode;
	}


	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}


	public String getAddress1() {
		return address1;
	}


	public void setAddress1(String address1) {
		this.address1 = address1;
	}


	public String getAddress2() {
		return address2;
	}


	public void setAddress2(String address2) {
		this.address2 = address2;
	}


	public String getAddress3() {
		return address3;
	}


	public void setAddress3(String address3) {
		this.address3 = address3;
	}


	public String getAddress4() {
		return address4;
	}


	public void setAddress4(String address4) {
		this.address4 = address4;
	}


	public Date getAvailableFrom() {
		return availableFrom;
	}


	public void setAvailableFrom(Date availableFrom) {
		this.availableFrom = availableFrom;
	}


	public Date getAvailableTo() {
		return availableTo;
	}


	public void setAvailableTo(Date availableTo) {
		this.availableTo = availableTo;
	}


	public InputStream getPhoto() {
		return photo;
	}


	public void setPhoto(InputStream photo) {
		this.photo = photo;
	}
	
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
	
}