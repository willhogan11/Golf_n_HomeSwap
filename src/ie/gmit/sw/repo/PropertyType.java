package ie.gmit.sw.repo;


// This enum holds the various property types associated with a users home / homes. 
public enum PropertyType {

	FLAT ("FLAT"),
	DETACHED ("DETACHED"),
	SEMI_DETACHED ("SEMI_DETACHED"),
	TERRACED ("TERRACED"),
	END_OF_TERRACE ("END_OF_TERRACE"),
	COTTAGE ("COTTAGE"),
	BUNGALOW ("BUNGALOW"),
	NOT_SPECIFIED ("NOT_SPECIFIED");

	private final String name;
	
	private PropertyType(String s){
		name = s;
	}
	
	public boolean equalsName(String otherName){
		return name.equals(otherName);
	}
	
	public String toString(){
		return this.name;
	}
}