package ASM.Service;



import ASM.model.Report;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.stereotype.Service;

@Service

public class ExcelExportService {
	public void exportToExcel(List<Report> reports, String filePath) throws IOException {
		try (Workbook workbook = new XSSFWorkbook()) {
			Sheet sheet = workbook.createSheet("Report Data");

			// Create a header row
			Row headerRow = sheet.createRow(0);
			headerRow.createCell(0).setCellValue("Group Name");
			headerRow.createCell(1).setCellValue("Sum");
			headerRow.createCell(2).setCellValue("Count");

			// Populate data rows
			for (int i = 0; i < reports.size(); i++) {
				Report report = reports.get(i);
				Row dataRow = sheet.createRow(i + 1);
				dataRow.createCell(0).setCellValue((String) report.getGroups());
				dataRow.createCell(1).setCellValue(report.getSum());
				dataRow.createCell(2).setCellValue(report.getCount());
			}

			// Write to the Excel file
			try (FileOutputStream fileOut = new FileOutputStream(filePath)) {
				workbook.write(fileOut);
			}
		}
	}
}
