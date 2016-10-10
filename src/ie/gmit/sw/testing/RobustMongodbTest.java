package ie.gmit.sw.testing;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import com.mongodb.DB;
import org.springframework.data.mongodb.core.MongoOperations;
import com.mongodb.MongoClient;


public class RobustMongodbTest {

	private final static String HOST = "localhost";
	private final static int PORT =27017;
	
	public static void main(String[] args) {
		try {
			// Connect to mongodb server on localhost
			MongoClient mongoClient = new MongoClient(HOST, PORT);
			DB db = mongoClient.getDB("testGolfNSwap");
			System.out.println("Successfully connected to MongoDB database " + db);
			
			// MongoOperations mongoOperations
			
			TestUser testUser = new TestUser();
			testUser.setUsername("Will");
			testUser.setPassword("will123");
			
			System.out.println(testUser);
			mongoClient.close();
			
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
	}
	
}

@Document(collection = "testusers")
class TestUser {
	@Id
	private String id;
	String username;
	String password;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "TestUser [username=" + username + ", password=" + password + "]";
	}
}
