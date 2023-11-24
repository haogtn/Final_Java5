package ASM.Service;

import java.util.Collection;
import java.util.Optional;

import ASM.model.CartItem;
import ASM.model.OrderDetail;

public interface ShoppingCartService {
	void add(CartItem item);

	void remove(int id);

	CartItem update(int proID, int qty);

	void clear();

	Collection<CartItem> getAllItems();

	int getCount();

	double getAmount();

	Optional<CartItem> getCarItemById(Integer id);
}
