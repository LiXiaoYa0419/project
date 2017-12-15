package work.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

 
import work.entity.OrderItem;
import work.entity.Product;
import work.entity.ProductSize;
import work.entity.User;
import work.entity.cart.CartItem;
import work.service.OrderService;
import work.service.ProductServiceImpl;
import work.service.ProductSizeServiceImpl;
import work.service.UserServiceImpl;

@Controller
@RequestMapping("/order")
public class OrderController {
	 
	@Resource
	private UserServiceImpl userService;
	@Resource
	private ProductSizeServiceImpl productSizeService;
	@Resource
	private ProductServiceImpl productService;
	
	@Resource
	private OrderService orderservic;

	@RequestMapping(value="/orderItem")
	public String addTOOrder(@RequestParam("id") int id,HttpServletRequest request,HttpSession session){
		String id1 = String.valueOf(id);
		Product product = userService.addProductToCart(id);
		Map<String,CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		if(cart.containsKey(id1)) {
			CartItem ci = cart.get(id1);
			ci.setCount(ci.getCount()+1);
		}else {
			CartItem ci = new CartItem();
			ci.setProduct(product);
			ci.setCount(1);
			cart.put(id1, ci);
		}
		session.setAttribute("cart", cart);
		return "orderItems";
		
		}
	@RequestMapping(value="/removeProduct")
	public String removeProduct(@RequestParam("id") int id,HttpSession session) {
		String id1 = String.valueOf(id);
		Map<String,CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		CartItem cartItem = cart.get(id1);
		int count = cartItem.getCount();
		cartItem.setCount(count-1);
		int count2 = cartItem.getCount();
		if(count2 < 1) {
			cart.remove(id1);
		}
		return "orderItems";
	}
}


