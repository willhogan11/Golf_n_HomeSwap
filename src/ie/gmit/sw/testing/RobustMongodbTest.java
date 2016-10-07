package ie.gmit.sw.config;

import com.mongodb.DB;
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
			
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
	}
}
