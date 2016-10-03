package ie.gmit.sw.config;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;

public class TestRunner {

	public static void main(String[] args) {
		
		// For XML
		// ApplicationContext ctx = new GenericXmlApplicationContext("SpringConfig.xml");
		
		// For Annotation
		ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringMongoConfig.class);
		MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");
		
		System.out.println(mongoOperation);
		System.out.println(ctx);
		
	}
}