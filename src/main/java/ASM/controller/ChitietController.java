package ASM.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ASM.DAO.DetailDAO;
import ASM.Service.SessionService;
import ASM.Service.ShoppingCartService;
import ASM.model.Account;
import ASM.model.CartItem;
import ASM.model.Product;


@Controller
@RequestMapping("chitiet")
public class ChitietController {
	
	@Autowired
	ShoppingCartService cartService;
	@Autowired
	SessionService session;	
	@Autowired
	DetailDAO chitiet;
	
	@GetMapping("chitiet/{id}")
	public String viewsChiTiet(@RequestParam("id")Model model, String id) {
		Optional<Product> pro = chitiet.findById(id);
		if(pro.isPresent()) {
			model.addAttribute("PRODUCT",pro.get());
		}else {
			model.addAttribute("PRODUCT" ,new Product());
		}
	
		return"chotiet";
	}

	
}
