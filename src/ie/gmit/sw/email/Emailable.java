package ie.gmit.sw.email;

import org.springframework.mail.SimpleMailMessage;

public interface Emailable {

	public SimpleMailMessage getSmm();
}
