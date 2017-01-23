package ie.gmit.sw.repo;

import java.util.List;

import org.springframework.data.repository.Repository;

public interface UserRepository extends Repository<User, Long>{

	public abstract List<User> findAllUsers();
	public void addUser(User user);
	public User getUserById(String id);
}
