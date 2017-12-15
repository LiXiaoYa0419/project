package work.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import work.entity.Product;
import work.entity.ProductSize;
import work.entity.User;
import work.entity.cart.CartItem;
import work.service.ProductSizeServiceImpl;
import work.service.UserServiceImpl;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Resource
	private UserServiceImpl userService;
	
	@Resource
	private ProductSizeServiceImpl productSizeService;
	
	
	@RequestMapping(value="/addProductToCart")
	public String addToCart(@RequestParam("id") int id,HttpServletRequest request,HttpSession session){
		String id1 = String.valueOf(id);
		Product product = userService.addProductToCart(id);
		List<ProductSize> ps =this.productSizeService.finds(id);
		request.setAttribute("ps", ps);
		User u1 = (User) session.getAttribute("user");
		if(u1 == null) {
			session.setAttribute("loginMsg", "请您先登录！再去下单！");
			return "login";
		}
		Map<String,CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<String,CartItem>();

		}
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
		return "cart";
		
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
		return "cart";
	}
	@RequestMapping("/addProduct")
	public String addProduct(@RequestParam("id") int productId,HttpSession session) {
		String id = String.valueOf(productId);
		Map<String,CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		CartItem productItem = cart.get(id);
		int count = productItem.getCount();
		productItem.setCount(count+1);
		return "cart";
	}
	
}
	

