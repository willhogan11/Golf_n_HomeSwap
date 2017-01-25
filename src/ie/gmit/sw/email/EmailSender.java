package ie.gmit.sw.email;

import org.springframework.mail.SimpleMailMessage;

/**
 * Email Sender is implemented class from ie.gmit.sw.Emailable
 * interface. The goal of this class is to gather and organise
 * data that is nesesary for sending email. This class contains
 * send method to perform sending message.
 * 
 * @author g00196984 - Andrej Lavrinovic
 *
 */
public class EmailSender implements Emailable {
	
	// Fields
	private String to;
	private String subject;
	private String message;
	
	private SimpleMailMessage smm = new SimpleMailMessage();

	// Constructors
	// Default
	public EmailSender() {}

	// Parameterised
	public EmailSender(String to, String subject, String message) {
		this.to = to;
		this.subject = subject;
		this.message = message;
		setSmm(this.to, this.subject, this.message);
	}
	
	// GETTERS/SETTERS generated by Eclipse
	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
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

	public void setSmm(String to, String subject, String message){
		this.smm.setTo(to);
		this.smm.setSubject(subject);
		this.smm.setText(message);
	}
	
	public SimpleMailMessage getSmm(){
		return this.smm;
	}
}