package ie.gmit.sw.repo;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class HomeRepoImpl implements HomeRepository{
	
	// logger for debugging
	private Logger log = Logger.getLogger(HomeRepoImpl.class);

	// Access to the mongodb configuration
	@Autowired
	private MongoTemplate mongoTemplate;
	
	/*
	 * (non-Javadoc)
	 * @see ie.gmit.sw.repo.HomeRepository#findAllHomes()
	 * 
	 * Lists all stored homes
	 */
	@Override
	public List<Home> findAllHomes() {
		List<Home> homes = mongoTemplate.findAll(Home.class);
		
		log.info("Number of homes in collecion >> " + homes.size());
		
		return homes;
	}

	/*
	 * (non-Javadoc)
	 * @see ie.gmit.sw.repo.HomeRepository#addHome(ie.gmit.sw.repo.Home)
	 * 
	 * Adds home to the collection
	 */
	@Override
	public void addHome(Home home) {
		mongoTemplate.insert(home);
	}

	/*
	 * (non-Javadoc)
	 * @see ie.gmit.sw.repo.HomeRepository#findHomeById(java.lang.String)
	 * 
	 * Returns home by its id number
	 */
	@Override
	public Home findHomeById(String id) {
		return mongoTemplate.findById(id, Home.class);
	}

	/*
	 * (non-Javadoc)
	 * @see ie.gmit.sw.repo.HomeRepository#findByUserEmail(java.lang.String)
	 * 
	 * Returns home b
	 */
	@Override
	public List<Home> findByUserEmail(String email) {
		return mongoTemplate.find(new Query(Criteria.where("userEmail").is(email)), Home.class);
	}

	/*
	 * (non-Javadoc)
	 * @see ie.gmit.sw.repo.HomeRepository#numberOfHomes()
	 * 
	 * Returns the total number of stored homes in collection
	 */
	@Override
	public Long numberOfHomes() {
		return mongoTemplate.count(new Query(), Home.class);
	}

	/*
	 * (non-Javadoc)
	 * @see ie.gmit.sw.repo.HomeRepository#delHome(ie.gmit.sw.repo.Home)
	 * 
	 * Deletes the home from collection
	 */
	@Override
	public void delHome(Home home) {
		mongoTemplate.remove(Home.class);
		
	}

	/*
	 * (non-Javadoc)
	 * @see ie.gmit.sw.repo.HomeRepository#existsHome(java.lang.String)
	 * 
	 * Returns true if the home with the given id number is exists
	 * and false in othe case
	 */
	@Override
	public boolean existsHome(String id) {
		return mongoTemplate.exists(new Query(Criteria.where("id").is(id)), Home.class);
	}

	/*
	 * (non-Javadoc)
	 * @see ie.gmit.sw.repo.HomeRepository#updateHome(ie.gmit.sw.repo.Home)
	 * 
	 * Updates home documents
	 */
	@Override
	public void updateHome(Home home) {
		mongoTemplate.save(Home.class);
	}

}
