package ie.gmit.sw.repo;

import java.util.ArrayList;
import java.util.List;

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
	private int bedrooms;
	private PropertyType propertyType;
	private boolean petFriendly;
	private int bathrooms;
	private int sleeps;
	
	// Andrej: Would the below be required again? as we have already mentioned this in the user pojo....
	// private UserVisibility uservisibility
	
	private String title;
	private String homeDetails;
	
	/* We need to discuss the best way to implement "homeFeatures" below, i'm sure there is something more efficient with Spring
	/* Essentially, the user can have multiple features in their home, e.g. Balcony AND pool and when the user ticks the boxes to add them, 
	 * we need to be able to store them and add them accordingly. 
	 * 
	 * I have commented out the main method below, but for testing it allows multiple values to ba added from the enum to the arraylist.
	 * We could just return the list using getters and setters or delegate methods etc, when done. Again, Andrej you may see a better way. 
	 * */
	
	private List<HomeFeatures> homeFeatures;
	
	
	
	
	
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
	
	
}