package ASM.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
import ASM.model.Account;
import jakarta.validation.Valid;
import ASM.Service.AccountService;
import ASM.Service.SessionService;
import ASM.Service.SessionService1;

@Controller
public class loginController {
	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	SessionService1 session1;
	@Autowired
	AccountService accountservice;
	

	@GetMapping("/account/login")
	public String login() {
		return "login-form";
	}

	@GetMapping("/admin/index")
	public String adminInex() {
		return "home";
	}

	@GetMapping("/admin/sanpham") // la vao trang them, xoa, sua
	public String loginIndex() {
		return "sanpham";
	}

	@GetMapping("/admin/dangky") // la vao trang them, xoa, sua
	public String loginIndex1() {
		return "dangky";
	}
	@GetMapping("/account/logout")
	public String accountlogin() {
		Account account = (Account) session.get("user");
		if(account != null) {
			session.remove("user");
		}
		return "redirect:/account/login";
	}

	@PostMapping("/account/login")
	public String login(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		try {
			Account user = dao.findByUsername(username);
			if (user == null || !user.getPassword().equals(password)) {
				model.addAttribute("message", "Invalid password");
			} else {
				session.set("user", user);
				String uri = (String) session.get("security-uri");
				if (uri != null) {
					return "redirect:" + uri;
					// return "admin/themxoasua"; // sua
				} else {
					model.addAttribute("message", "Login succeed");
			
					model.addAttribute("u", user.getUsername());
					return "/account/register";
				}
			}
		} catch (Exception e) {
			model.addAttribute("message", "Invalid username");
		}
		return "login-form";
	}

	


}
