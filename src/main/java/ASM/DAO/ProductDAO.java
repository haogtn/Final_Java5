package ASM.DAO;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import ASM.model.Product;
import ASM.model.Report;



public interface ProductDAO extends JpaRepository<Product, Integer> {
	List<Product> findByPriceBetween(double minPrice, double maxPrice);
	@Query("SELECT new Report(o.category.id, sum(o.price), count(o)) " + " FROM Product o " + " GROUP BY o.category.id"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategory(Pageable pageable);
	
	Page<Product> findAllByNameLike(String keywords, Pageable pageable);
	//Report
	@Query("SELECT new Report(o.category.name, sum(o.price), count(o)) "
			+ " FROM Product o "
			+ " GROUP BY o.category.name"
			+ " ORDER BY sum(o.price) DESC")
			List<Report> getInventoryByCategory();
	
}
