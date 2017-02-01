package ie.gmit.sw.repo;

import java.util.List;

import org.springframework.data.repository.Repository;

public interface UserRepository extends Repository<User, Long>{

	public List<User> findAllUsers();
	public void addUser(User user);
	public User findUserById(String id);
	public User findByEmail(String email);
	public Long numberOfUsers();
	public void delUser(User user);
	public boolean existsUser(String id);
	public void updateUser(User user);
	public User findPassword(String password);
}
