package ie.gmit.sw.repo;

/* 
 * This enum holds the Visibility levels for the user.
 * 
 * Private: No one will have visibility of that particular user
 * Public: Everyone will have visibility of that particular user
 * Group: The user can be seen only by people in that group. 
 */

public enum HomeVisibility {
	
	PRIVATE ("PRIVATE"),
	PUBLIC ("PUBLIC"),
	GROUP ("GROUP");


	private final String name;
	
	private HomeVisibility(String s){
		name = s;
	}
	
	public boolean equalsName(String otherName){
		return name.equals(otherName);
	}
	
	public String toString(){
		return this.name;
	}
}