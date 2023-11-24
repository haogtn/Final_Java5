package ASM.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ASM.DAO.GioHangDAO;
import ASM.DAO.ProductDAO;

import ASM.Service.ShoppingCartService;
import ASM.model.CartItem;
import ASM.model.OrderDetail;
import ASM.model.Product;

@Controller
@RequestMapping("shopping-cart")
public class ThanhToanController {

	@GetMapping("views")
	public String viewCart(Model model, Integer id) {
		List<CartItem> cart = dao.findAll();
		model.addAttribute("cart", cart);
		double totalQuantity = dao.getTotalPrice();
		model.addAttribute("totalQuantity", totalQuantity);
		
		

		model.addAttribute("Count", cartService.getCount());
		return "/giohang";
	}

	@Autowired
	GioHangDAO dao;
	@Autowired
	ProductDAO dao1;
	@Autowired
	ShoppingCartService cartService;

	@GetMapping("/add/{id}")
	public String add(Model model, @PathVariable("id") Integer id) {
		Product pro = dao1.findById(id).get();
		System.out.println(pro);
		if (pro != null) {
			CartItem cartItem = new CartItem();

			cartItem.setName(pro.getName());
			cartItem.setImage(pro.getImage());
			cartItem.setPrice(pro.getPrice());
			cartItem.setProductids(pro.getId());
			cartItem.setQty(1);
			dao.save(cartItem);
		}

		return "redirect:/shopping-cart/views"; // hiển thị giỏ hàng
	}

	@GetMapping("del/{id}")
	public String remove(@PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "redirect:/shopping-cart/views";
	}
	

	@PostMapping("update/{id}/{qty}")
	public String update(@RequestParam("id") Integer id, @RequestParam("qty") Integer qty) {
		CartItem pro = dao.findById(id).get();
		System.err.println("CARITEM + " + pro.getName());
		if (pro != null) {
//			CartItem cartItem = new CartItem();
			pro.setQty(qty);
			dao.save(pro);
		}
		return "redirect:/shopping-cart/views";
	}

	@GetMapping("clear")
	public String clear() {
		cartService.clear();
		return "redirect:/shopping-cart/views";
	}

}
