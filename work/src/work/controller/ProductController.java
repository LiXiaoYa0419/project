package work.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import work.entity.CartItem;
import work.entity.Product;
import work.entity.ProductSize;
import work.service.ProductServiceImpl;
import work.service.ProductSizeServiceImpl;
import work.service.UserServiceImpl;


@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
	private ProductServiceImpl productService;
	@Resource
	private ProductSizeServiceImpl productSizeService;
	@RequestMapping("/list")
	public String list(Model model,HttpServletRequest request){
		List<Product> list=this.productService.listProducts();
		request.setAttribute("list", list);
		model.addAttribute(list);
		return "list";
	}
	
	@RequestMapping("/content")
	public String findById(@RequestParam(value="id") int id,Model model,HttpServletRequest request){
		Product p = this.productService.findById(id);
		List<ProductSize> ps =this.productSizeService.finds(id);
		request.setAttribute("ps", ps);
		request.setAttribute("p", p);
		return "content";
	}
	@RequestMapping("/type")
	public String findByTypeId(@RequestParam("producttypeid") int producttypeid,HttpServletRequest request){
		Product tpl = this.productService.findByTypeId(producttypeid);
		request.setAttribute("tpl", tpl);
		return "typeproduct";
	}
	 
	
	@RequestMapping(value="/addProductToCart")
	public String addToCart(@RequestParam("id") int id,HttpServletRequest request,HttpSession session){
		String id1 = String.valueOf(id);
		Product product = productService.findById(id);
		Map<String,CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		
		if(cart == null) {
			cart = new HashMap<String,CartItem>();
			session.setAttribute("cart", cart);
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
		
		return "list";
		
		
		
	}
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	public String addProduct(@RequestParam("id") int id,HttpSession session) {
		String id1 = String.valueOf(id);
		Map<String,CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		CartItem cartItem = cart.get(id1);
		int count = cartItem.getCount();
		cartItem.setCount(count+1);
		return "cart"; 
	}
	
	@RequestMapping(value="/removeProduct",method=RequestMethod.POST)
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
	
	
}

