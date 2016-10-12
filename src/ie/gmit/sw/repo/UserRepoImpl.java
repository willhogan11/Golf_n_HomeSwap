package ie.gmit.sw.repo;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepoImpl implements UserRepository {
	
	private Logger log = Logger.getLogger(UserRepoImpl.class);
	
	@Autowired
	private MongoTemplate mongoTemplate;

	@Override
	public void addUser(User user) {
		mongoTemplate.insert(user);
		
		log.info("UserRepoImpl--addUser => " + user);
	}
}
