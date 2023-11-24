package ASM.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ASM.DAO.ProductDAO;

import ASM.Service.SessionService;
import ASM.Service.ShoppingCartService;



@Controller
public class TrangChuController {
	@Autowired
	ProductDAO dao;
	@Autowired
	ShoppingCartService cartService;
	@Autowired
	SessionService session;	
	
@RequestMapping("home")
public String viewHome(Model model) {

	model.addAttribute("LIST_PRODUCT",dao.findAll());
	model.addAttribute("Count", cartService.getCount());
	
	return "home";
}
}
