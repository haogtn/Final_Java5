package ASM.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {
@GetMapping("profile")
public String viewAdmin() {
	return"admin";
}
@GetMapping("product")
public String viewProduct() {
	return"admin1";
}
@GetMapping("list-profile")
public String viewListProfile() {
	return"admin2";
}
@GetMapping("list-product")
public String viewListProduct() {
	return"admin3";
}
}
