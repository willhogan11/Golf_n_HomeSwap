package ie.gmit.sw.repo;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * This is Home pojo that contains all home details 
 * 
 * @author g00318460 -  Will Hogan
 * @author g00196984 - Andrej Lavrinovic
 *
 */


@Document(collection="home")
public class Home {

	@Id
	private String id;
	
	
}