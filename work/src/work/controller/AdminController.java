package work.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import work.entity.Admin;
 
import work.entity.OrderItem;
import work.entity.Product;
import work.entity.User;
import work.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Resource
	private AdminService adminService;
	
	//管理员登录
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public String login(HttpSession session,HttpServletRequest request,Admin a) {
			Admin a1 = this.adminService.login(a.getAdminName());
			//System.out.println("nsx");
			if(a1 != null){
				if(a1.getAdminPwd() .equals(a.getAdminPwd())){
					session.setAttribute("loginUser", a1);
					return "admin";
			}
		}
			return "alogin";
			
		}
		//显示所有用户
		@RequestMapping("/showAllUsers")
		public String showAllUsers(HttpSession session) {
			List<User> userList = adminService.showAllUsers();
			for(User u:userList){
				System.out.println(u.getLoginName());
			}
			//session.removeAttribute("searchuser");
			session.setAttribute("userList", userList);
			return "userlist";
		}
		//删除指定用户
		@RequestMapping("/deleteUser")
		public String deleteUser(@RequestParam("id") int id) {
			adminService.deleteUser(id);
			return "redirect:showAllUsers";
		}
		
		//通过id搜索用户
		@RequestMapping("/searchUser")
		public String searchUser(@RequestParam("searchuser") int searchuser,HttpSession session) {
			session.setAttribute("searchuser", searchuser);
			return "userlist";
		}
		//展示所有商品
		@RequestMapping("/showAllProducts")
		public String showAllProducts(HttpSession session) {
			List<Product> productList = adminService.getAllProducts();
			session.removeAttribute("searchProduct");
			session.setAttribute("productList", productList);
			return "products";
		}
		//通过id搜索商品
		@RequestMapping("/searchProduct")
		public String searchProduct(@RequestParam("searchProduct") int searchProduct,HttpSession session) {
			session.setAttribute("searchProduct",searchProduct);
			return "products";
		}
		//删除指定商品
		@RequestMapping("/deleteProduct")
		public String deleteProduct(@RequestParam("id") int id) {
			adminService.deleteProduct(id);
			return "redirect:showAllProducts";
		}
		//添加商品信息
		@RequestMapping("/addProduct")
		public void addproduct(Product product,HttpServletRequest request) throws IOException {
			adminService.addProduct(product);
			 
		}
		//展示被修改商品的信息
		@RequestMapping("/showRevisedProduct")
		public String showRevisedProduct(@RequestParam("id") int id,HttpServletRequest request) {
			Product p = adminService.getProduct(id);
			request.getSession().setAttribute("revisedProductId", id);
			request.setAttribute("revisedProduct", p);
			return "changeproduct";
		}
		//修改指定商品信息
		@RequestMapping("/changeroduct")
		public String reviseProduct(Product product,HttpServletRequest request) {
			int id = (int) request.getSession().getAttribute("revisedProductId");
			//System.out.println(product.getName());
			Product p = adminService.update(product,id);
			request.setAttribute("revisedProduct", p);
			return "changeproduct";
		}
		//展示所有dingdan
				@RequestMapping("/showAllOrders")
				public String showAllOrders(HttpSession session) {
					List<OrderItem> OrderList = adminService.showAllOrders();
					session.removeAttribute("searchProduct");
					session.setAttribute("OrderList", OrderList);
					return "orders";
				}
		
		//删除指定order
				@RequestMapping("/deleteOrder")
				public String deleteOrder(@RequestParam("id") int id) {
					adminService.deleteOrderById(id);
					return "redirect:showAllOrders";
				}
}