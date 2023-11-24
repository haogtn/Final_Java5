package ASM.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import ASM.model.Category;



public interface CategoryDAO extends JpaRepository<Category, String>{

}
