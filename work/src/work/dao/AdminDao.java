package work.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import work.entity.Admin;
 
import work.entity.OrderItem;
import work.entity.Product;
import work.entity.User;

@Repository
public class AdminDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public Admin findByAdminName(String adminName) {
		String hql = "from Admin a where a.adminName=:adminName";  
        Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter("adminName", adminName);
        return (Admin)query.uniqueResult();
	}

	public List<User> findAllUsers() {
		return  this.sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	public void deleteUserById(int id) {
		String hql="delete from User where id=:id";
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter("id", id);
        query.executeUpdate();
		
	}
	public User findUserById(int id) {
		String hql="from User where id=:id";
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter("id", id);
        return (User)query.uniqueResult();
	}
	public List<Product> showAllProducts() {
		Query query=this.sessionFactory.getCurrentSession().createQuery("from Product");
		return (List<Product>)query.list();
	}

	public void deleteProductById(int id) {
		this.sessionFactory.getCurrentSession().createQuery("delete from Product where id=?").setParameter(0,id).executeUpdate();
		
	}

	public void addProduct(Product product) {
		this.sessionFactory.getCurrentSession().save(product);
	}

	public Product selectProductById(int id) {
		return (Product) this.sessionFactory.getCurrentSession().createQuery("from Product where id=?").setParameter(0, id).uniqueResult();
	
	}
	public List<OrderItem> showAllOrders() {
		Query query=this.sessionFactory.getCurrentSession().createQuery("from OrderItem");
		return (List<OrderItem>)query.list();
	}

	public void deleteOrderById(int id) {
		this.sessionFactory.getCurrentSession().createQuery("delete from OrderItem where id=?").setParameter(0,id).executeUpdate();
		
	}
	
}

