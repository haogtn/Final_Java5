package ASM.Service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import ASM.DAO.GioHangDAO;
import ASM.model.CartItem;
import ASM.model.OrderDetail;


@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	
	@Autowired
	GioHangDAO dao;
	
	Map<Integer, CartItem> maps = new HashMap<>();
	public Optional<CartItem> getCarItemById(Integer id) {
        return dao.findById(id);
        }
	@Override
	public void add(CartItem item) {
		CartItem cartItem = maps.get(item.getProductids());
		if (cartItem == null) {
			
		} else {
			cartItem.setQty(cartItem.getQty() + 1);
		}
	}
	@Override
	public void remove(int id) {
		maps.remove(id);
	}
	@Override
	public CartItem update(int proID, int qty) {
		CartItem cartItem = maps.get(proID);
	
		if (cartItem == null) {
		    // Nếu null, hãy khởi tạo nó
		    cartItem = new CartItem();
		}

		// Gọi phương thức setQty(int)
		cartItem.setQty(qty);
		return cartItem;
	}
	@Override
	public void clear() {
		maps.clear();
	}
	@Override
	public Collection<CartItem> getAllItems() {
		return maps.values();
	}
	@Override
public int getCount() {
		
		return maps.values().stream().mapToInt(item -> item.getQty()).sum();
	}
	@Override
	public double getAmount() {
		return maps.values().stream().mapToDouble(item -> item.getQty() * item.getPrice()).sum();
	}
	
	
}
