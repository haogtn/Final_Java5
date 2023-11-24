package ASM.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ASM.DAO.AccountDAO;
import ASM.Service.AccountService;
import ASM.Service.MailerService;
import ASM.Service.ParamService;
import ASM.model.Account;
import jakarta.validation.Valid;

@Controller
@RequestMapping("account1")
public class registerController {
	@Autowired
	JavaMailSender sender;
	@Autowired
	MailerService mailer;
	@Autowired
	AccountService accountService;
	@Autowired
	ParamService paramService;
	@Autowired
	AccountDAO dao;
	@GetMapping("dangky")
	public String viewsRegister(Model model, @ModelAttribute("account") Account account) {

		return "/dangky";
	}
	@PostMapping("account1/dangky")
	public String register(Model model, @Valid @ModelAttribute("account") Account account, BindingResult result ,RedirectAttributes redirect) {
		if(result.hasErrors()) {
			return "/dangky";
		}
		else {
			account.setAdmin(false);
			account.setActivated(true);
			dao.save(account);
			redirect.addAttribute("error","dang ky thanh cong");
			return "redirect:/account1/dangky";
		}
	}
}
