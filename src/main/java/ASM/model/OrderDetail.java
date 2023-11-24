package ASM.model;

import java.io.Serializable;

import jakarta.annotation.Generated;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Data;

@Data
@Entity
@Table(name = "Orderdetails") 
public class OrderDetail implements Serializable {

	@Id @GeneratedValue (strategy = GenerationType.IDENTITY)
	private Long id;
	private Double price;
	private Integer quantity;
	@ManyToOne @JoinColumn(name = "Productid")
	private Product product;
	@ManyToOne @JoinColumn(name="Orderid")
	private Oder order;
	

}
