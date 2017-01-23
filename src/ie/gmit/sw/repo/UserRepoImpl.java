package ie.gmit.sw.repo;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepoImpl implements UserRepository{
	
	private Logger log = Logger.getLogger(UserRepoImpl.class);
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	@Override
	public void addUser(User user) {
		mongoTemplate.insert(user);
		
		log.info("UserRepoImpl--addUser => " + user);
	}

	
	@Override
	public List<User> findAllUsers() {
		List<User> users = mongoTemplate.findAll(User.class);
		log.info("UserRepoImpl--users.size is: " + users.size());
		return users;
	}

	@Override
	public User getUserById(String id) {
		return mongoTemplate.findById(id, User.class);
	}
}
