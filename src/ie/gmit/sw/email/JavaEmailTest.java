package ie.gmit.sw.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

public class JavaEmailTest {
	
	@Autowired
	private JavaMailSender mailSender;
	
	private String recipientAddress;
	private String subject;
	private String message;
	
	public JavaEmailTest(){};
	
	public JavaEmailTest(String recipientAddress, String subject, String message) {
		this.recipientAddress = recipientAddress;
		this.subject = subject;
		this.message = message;
	}




	// getters/setters
	public String getRecipientAddress() {
		return recipientAddress;
	}

	public void setRecipientAddress(String recipientAddress) {
		this.recipientAddress = recipientAddress;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}



	public boolean send(){
		
		SimpleMailMessage email = new SimpleMailMessage();
		
		email.setTo(this.recipientAddress);
		email.setText(this.message);
		email.setSubject(this.subject);
		
		try{
			this.mailSender.send(email);
			return true;
		}catch(MailException me){
			System.out.println(me.getMessage());
			return false;
		}
	}
}
