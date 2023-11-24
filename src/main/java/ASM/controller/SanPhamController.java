package ASM.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ASM.DAO.ProductDAO;

import ASM.Service.SessionService;
import ASM.Service.ShoppingCartService;
import ASM.model.Product;

@Controller
public class SanPhamController {
	@Autowired
ProductDAO dao;
	@Autowired
	ShoppingCartService cartService;
	@Autowired
	SessionService session;	

	
	
	@GetMapping("/sanpham/search/{id}")
	public String detail(Model model , @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		System.out.println(item);
		return"/chotiet";
	}
	
	@RequestMapping("/sanpham/search")
	public String search(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max,@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		model.addAttribute("LIST_PRODUCT",dao.findAll());
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		List<Product> items = dao.findByPriceBetween(minPrice, maxPrice);
		String kwords = kw.orElse((String) session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Product> page = dao.findAllByNameLike("%" + kwords + "%", pageable);
		
		model.addAttribute("page", page);
		model.addAttribute("items", items);
		return "sanpham";
	}
	
	
	
}
