package ASM.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import ASM.model.Product;

public interface DetailDAO  extends JpaRepository<Product, String>  {

}
