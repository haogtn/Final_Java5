package ASM.controller;


import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import ASM.helper.MailerHelper;
import ASM.model.MailInfo;

import ASM.Service.MailerService;
import ASM.helper.MailerHelper;
import ASM.model.MailInfo;
import jakarta.mail.MessagingException;


@Controller

public class MailerController {

	@Autowired
	MailerService mailerService;

	@RequestMapping("sendMail")
	public String getSendMail(Model model, @ModelAttribute("emailForm") MailInfo mail) {

		return "mail";
	}

	@PostMapping("send-email")
	public String send(Model model, @RequestParam String txtTo, @RequestParam String txtCC, @RequestParam String txtBCC,
			@RequestParam String txtSubject, @RequestParam String txtContent,
			@RequestParam("file") MultipartFile multipartFile
//			, @RequestParam("file1") MultipartFile multipartFile1
	) throws IOException {
		MailerHelper helper = new MailerHelper();
		List<File> files = new ArrayList<>();
		String[] emailCC = helper.parseStringEmailToArray(txtCC);
		String[] emailBCC = helper.parseStringEmailToArray(txtBCC);
		MailInfo mail = new MailInfo();
		mail.setTo(txtTo);
		mail.setCc(emailCC);
		mail.setBcc(emailBCC);
		mail.setSubject(txtSubject);
		mail.setBody(txtContent);

		// covert MultipartFile to File
		if (!multipartFile.isEmpty()) {
			File file = helper.convertMultipartFileToFile(multipartFile);
			files.add(file);
			// Set cho MailInfo
			mail.setFiles(files);
		}
		String excelFilePath = "" + "report_data_" + LocalDate.now().toString() + ".xlsx";

		System.err.println("EXCEL FILE PATH ++ " + excelFilePath);
		File file = new File(excelFilePath);
		if (file.exists()) {
			System.out.println("File exists: " + file.getAbsolutePath());
			files.add(file);
			mail.setFiles(files);

			try {
				mailerService.send(mail);
				model.addAttribute("mailSendingMessage", "Sending mail successfully");
			} catch (Exception e) {
				model.addAttribute("mailSendingMessage", "Can not send this mail. Cause, " + e.getMessage());
				System.out.println(e.getMessage());
			}
		} else {
			System.out.println("File does not exist.");
		}

		return "forward:/sendMail";
	}

}
