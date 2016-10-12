package ie.gmit.sw.repo;

import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository {

	public void addUser(User user);
}
