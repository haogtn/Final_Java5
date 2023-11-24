package ASM.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import ASM.model.CartItem;
import ASM.model.Product;

public interface GioHangDAO extends JpaRepository<CartItem, Integer>{
	  @Query("SELECT COALESCE(SUM(o.price * o.qty), 0) FROM CartItem o")
	    double getTotalPrice();
}
