package work.service;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import work.dao.AdminDao;
import work.entity.Admin;
 
import work.entity.OrderItem;
import work.entity.Product;
import work.entity.User;

@Service
public class AdminService {
	@Resource
	private AdminDao adminDao;
	
	public Admin login(String adminName) {
		return adminDao.findByAdminName(adminName);
	}

	public List<User> showAllUsers() {
		
		return adminDao.findAllUsers();
	}

	public void deleteUser(int id) {
		adminDao.deleteUserById(id);
	}

	

	public List<Product> getAllProducts() {
		return adminDao.showAllProducts();
	}

	public void deleteProduct(int id) {
		adminDao.deleteProductById(id);
	}

	public void addProduct(Product product) {
		adminDao.addProduct(product);
	}

	public Product getProduct(int id) {
		return adminDao.selectProductById(id);
	}

	public Product update(Product product,int id) {
		Product p = adminDao.selectProductById(id);
		p.setName(product.getName());
		p.setPrice(product.getPrice());
		p.setDescription(product.getDescription());
		
		return p;
	}
	public List<OrderItem> showAllOrders() {
		return this.adminDao.showAllOrders();
	}

	public void deleteOrderById(int id) {
		this.adminDao.deleteOrderById(id);
		
	}
}
