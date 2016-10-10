package ie.gmit.sw.testing;

import org.apache.log4j.BasicConfigurator;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;

public class TestRunner {

	public static void main(String[] args) throws Throwable {
		
		BasicConfigurator.configure();
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConfig.xml");
		MongoOperations mongoOperations = ctx.getBean("mongoTemplate", MongoOperations.class);
		
		User user = new User();
		user.setId("1");
		user.setUsername("Will");
		user.setPassword("will123");
		
		System.out.println(user);
		System.err.println(user);
		
		mongoOperations.save(user); 
	}
}