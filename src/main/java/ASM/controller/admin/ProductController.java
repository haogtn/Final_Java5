package ASM.controller.admin;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
import org.springframework.web.multipart.MultipartFile;

import ASM.Service.SessionService;

import ASM.DAO.CategoryDAO;
import ASM.DAO.ProductDAO;
import ASM.Service.ParamService;

import ASM.model.Category;
import ASM.model.Product;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	ParamService paramService;
	@Autowired
	ProductDAO dao;
	@Autowired
	CategoryDAO ctdao;

	@GetMapping("index")
	public String showForm(Model model) {
		model.addAttribute("PRODUCT", new Product());
		return "/views/category";
	}

	@ModelAttribute("categories")
	public List<Category> cate() {
		return ctdao.findAll();
	}

	@PostMapping("SaveOrUpdate")
	public String saveOrUpdate(@Validated @ModelAttribute("PRODUCT") Product ac, BindingResult result, Model model,
	                           @RequestParam("image") List<MultipartFile> images) throws IOException {

	    if (result.hasErrors() || images.stream().anyMatch(MultipartFile::isEmpty)) {
	        model.addAttribute("ERROR_PHOTO", "Hãy chọn tất cả ảnh");
	        return "/views/category";
	    }

	    String uploadDir = "uploads/";
	    System.out.println(ac);
	    for (int i = 0; i < images.size(); i++) {
	        MultipartFile image = images.get(i);
	        String fileName = StringUtils.cleanPath(image.getOriginalFilename());
	        ac.setImage(fileName); // Đảm bảo phương thức setImage hỗ trợ việc thiết lập nhiều hình ảnh
	        paramService.save(image, uploadDir);
	    }
	    System.out.println(ac);
	    dao.save(ac);

	    model.addAttribute("mes", "Tạo sản phẩm thành công!!!");
	    model.addAttribute("PRODUCT", new Product());

	    return "/views/category";
	}

	@GetMapping("views")
	public String viewAccount(Model model) {
		model.addAttribute("PRODUCTS", dao.findAll());
		return "/views/listcategory";
	}

	@GetMapping("views/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Optional<Product> account = dao.findById(id);
		if (account.isPresent()) {
			model.addAttribute("PRODUCT", account.get());
		} else {
			model.addAttribute("PRODUCT", new Product());
		}
		return "/views/category";
	}

	@GetMapping(value = "views", params = "btnDel")
	public String delAccount(@RequestParam("id") Integer id, Model model) {
		dao.deleteById(id);
		return "redirect:/product/views";
	}

}
