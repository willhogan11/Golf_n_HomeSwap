package ie.gmit.sw.repo;

import java.util.List;

import org.springframework.data.repository.Repository;

public interface HomeRepository extends Repository<Home, Long> {

	public List<Home> findAllHomes();
	public void addHome(Home home);
	public Home findHomeById(String id);
	public List<Home> findByUserEmail(String email);
	public Long numberOfHomes();
	public void delHome(Home home);
	public boolean existsHome(String id);
	public void updateHome(Home home);
}
