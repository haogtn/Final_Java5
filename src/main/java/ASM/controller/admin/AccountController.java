package ASM.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import ASM.Service.MailerService;

import ASM.helper.MailerHelper;
import ASM.model.MailInfo;

import ASM.Service.AccountService;
import ASM.Service.ParamService;
import ASM.model.Account;

@Controller
@RequestMapping("account")
public class AccountController {
	@Autowired
	JavaMailSender sender;
	@Autowired
	MailerService mailer;
	@Autowired
	AccountService accountService;
	@Autowired
	ParamService paramService;
	@GetMapping("register")
	public String showForm(Model model) {
		model.addAttribute("ACCOUNT", new Account());
		return "/views/register-form";
	}

	@PostMapping("SaveOrUpdate")
	public String saveOrUpdate(@Validated @ModelAttribute("ACCOUNT") Account ac, BindingResult result, Model model,
			@RequestParam("image") MultipartFile multipartFile) throws IOException {
		
		if (result.hasErrors() || multipartFile.isEmpty()) {
			
				model.addAttribute("ERROR_PHOTO", "Hãy chọn ảnh");
				System.out.println("looxi anhr " + ac.getUsername());

			
			return "/views/register-form";
		}
		String fileName=StringUtils.cleanPath(multipartFile.getOriginalFilename());
		String uploadDir = "uploads/";
		ac.setPhoto(fileName);
		accountService.save(ac);
		paramService.save(multipartFile, uploadDir);
		
	
		model.addAttribute("mes", "Tạo User thành công!!!");
		model.addAttribute("ACCOUNT", new Account());
		
		return "/views/register-form";
	}
	@ModelAttribute("genders")
	public Map<Boolean, String> getGenders(){
		Map<Boolean, String > map = new HashMap<>();
		map.put(true, " Nam");
		map.put(false, "Nữ ");
		return map;
		
	}
	@ModelAttribute("faculties")
	public List<String> getFaculties(){
		return Arrays.asList("Đi chơi","Mua sắm","Thể thao","Khác");
	}
	@GetMapping("views")
	public String viewAccount(Model model) {
		model.addAttribute("ACCOUNTS",accountService.findAll());
		return "/views/listprofile";
	}
	@GetMapping("register/{username}")
	public String edit(@PathVariable("username") String username, Model model) {
	Optional<Account> account = accountService.findById(username);
	if(account.isPresent()) {
		model.addAttribute("ACCOUNT",account.get());
	}else {
		model.addAttribute("ACCOUNT",new Account());
	}
		return "/views/register-form";
	}
	@GetMapping(value = "views", params = "btnDel")
	public String delAccount(@RequestParam("username") String username, Model model) {
	accountService.deleteById(username);
		return "redirect:/account/views";
	}
	

}
