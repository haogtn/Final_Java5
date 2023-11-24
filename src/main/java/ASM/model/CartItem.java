package ASM.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name = "Caritems", uniqueConstraints = 
{@UniqueConstraint(columnNames = {"Product_id"})})
public class CartItem {
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
private Integer productids;
private String name;
private String image;
@ManyToOne @JoinColumn(name = "Product_id")
private Product product;
private double price;
private int qty ;

}
