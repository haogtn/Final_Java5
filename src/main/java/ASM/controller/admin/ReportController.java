package ASM.controller.admin;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ASM.Service.ExcelExportService;
import ASM.Service.MailerService;

import ASM.DAO.ProductDAO;

import ASM.model.Report;

@Controller
public class ReportController {
	@Autowired
	ProductDAO dao;
	@Autowired
	MailerService mailerService;

	@Autowired
	ExcelExportService excelExportService;

	@RequestMapping("/report/inventory-by-category")
	public String inventory(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		List<Report> items = dao.getInventoryByCategory(pageable);
		model.addAttribute("items", items);
		return "views/report";
	}

	@RequestMapping("report/excel-sendMail")
	public String sendExcelToMail(Model model) {
		List<Report> reportList = dao.getInventoryByCategory();
		LocalDate date = LocalDate.now();
		try {
			excelExportService.exportToExcel(reportList, "report_data_" + date.toString() + ".xlsx");
			model.addAttribute("messageExcel", "Export To Excel Successfully");
		} catch (Exception e) {

			model.addAttribute("messageExcel", "Export To Excel Failed === " + e.getMessage());

		}
		return "redirect:/sendMail";
	}
}
