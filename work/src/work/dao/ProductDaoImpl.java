package work.dao;


import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
 
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

 
import work.entity.Product;

@Repository
public class ProductDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Product> findAll(){
		Query query=this.sessionFactory.getCurrentSession().createQuery("from Product");
		return (List<Product>)query.list();
	}
 	 public Product findById(int id) {
 		return (Product)this.sessionFactory.getCurrentSession().get(Product.class, id);
 	 }
 
 	 
	
}
