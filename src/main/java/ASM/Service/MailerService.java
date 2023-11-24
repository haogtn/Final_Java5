package ASM.Service;

import ASM.model.MailInfo;


import jakarta.mail.MessagingException;

public interface MailerService {
	void send(MailInfo mail) throws MessagingException;
	void send(String to, String subject, String body) throws MessagingException;
	void queue(String to, String subject, String body);
	void queue(MailInfo mail);

}
