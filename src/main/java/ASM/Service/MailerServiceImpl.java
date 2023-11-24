package ASM.Service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import ASM.model.MailInfo;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class MailerServiceImpl implements MailerService {
	List<MailInfo> ls = new ArrayList<>();
	
	@Autowired
	JavaMailSender sender;

	@Override
	public void send(MailInfo mail) throws MessagingException {
		
		
		MimeMessage message = sender.createMimeMessage();
		// Sử dụng Helper để thiết lập các thông tin cần thiết cho message
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
		
		helper.setTo(mail.getTo());
		helper.setSubject(mail.getSubject());
		helper.setText(mail.getBody(), true);
	

		String[] cc = mail.getCc();
		//Kiểm tra mảng cc có tồn tại hay không
		if (cc != null && cc.length > 0) {
			helper.setCc(cc);
		}
		
		String[] bcc = mail.getBcc();
		//Kiểm tra mảng bcc có tồn tại hay không
		if (bcc != null && bcc.length > 0) {
			helper.setBcc(bcc);
		}
		//Mảng file
//		List<File> files = mail.getFiles();
//		if (files.size()>0) {
//			for (File file:files) {
//				helper.addAttachment(file.getName(), file);
//			}
//		}
		List<File> files = mail.getFiles();
	    if (files.size() > 0) {
	        for (File file : files) {
	            FileSystemResource fileResource = new FileSystemResource(file);
	            helper.addAttachment(file.getName(), fileResource);
	        }
	    }
		// Gửi message đến SMTP server
		sender.send(message);
		
	}

	@Override
	public void send(String to, String subject, String body) throws MessagingException {
		this.send(new MailInfo(to, subject, body));
		
	}
	
	
	

	@Override
	public void queue(MailInfo mail) {
		ls.add(mail);
	}

	
	@Override
	public void queue(String to, String subject, String body) {
		queue(new MailInfo(to, subject, body));
	}

	@Scheduled(fixedDelay = 1000)
	public void run() {
		while (!ls.isEmpty()) {
			MailInfo mail = ls.remove(0);
			try {
				this.send(mail);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	


	
}
