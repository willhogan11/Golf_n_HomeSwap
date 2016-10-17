package ie.gmit.sw.repo;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository {

	public void addUser(User user);
	public List<User> getAllUsers();
}
