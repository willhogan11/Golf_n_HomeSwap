package ie.gmit.sw.repo;

import java.util.List;

import org.springframework.data.repository.Repository;

public interface UserRepository extends Repository<User, Long>{

	public List<User> findAllUsers();
	public void addUser(User user);
	public User findUserById(String id);
	public Long countUsers();
	public void deleteUser(User user);
	public boolean existsUser(String id);
	public void updateUser(User user);
}
