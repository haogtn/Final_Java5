package ASM.controller.admin;

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

import ASM.DAO.CategoryDAO;
import ASM.model.Category;





@Controller

public class CategoryController {
	@Autowired
	CategoryDAO dao;
	
	@RequestMapping("category/index")
	public String index(Model model) {
		Category item = new Category();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "/views/product";
	}

@RequestMapping("category/edit/{id}")
public String edit(Model model, @PathVariable("id") String id) {
	Category item = dao.findById(id).get();
	model.addAttribute("item", item);
	List<Category> items = dao.findAll();
	model.addAttribute("items", items);
	return "/views/product";
}

@RequestMapping("category/create")
public String create(Category item) {
	dao.save(item);
	return "redirect:/category/index";
}

@RequestMapping("category/update")
public String update(Category item) {
	dao.save(item);
	return "redirect:/category/edit/" + item.getId();
}

@RequestMapping("category/delete/{id}")
public String create(@PathVariable("id") String id) {
	dao.deleteById(id);
	return "redirect:/category/index";
}
@RequestMapping("/category/page")
public String paginate(Model model, @RequestParam("page") Optional<Integer> page) {
	Pageable pageable = PageRequest.of(page.orElse(0), 5);
	Page<Category> pages = dao.findAll(pageable);
	model.addAttribute("page", pages);
	return "/views/listproduct";
}
}
