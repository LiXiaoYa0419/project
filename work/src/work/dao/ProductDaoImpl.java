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
 	 public Product findByTypeId(int producttypeid){
 			String hql = "from Product where producttypeid = ?";
 			Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
 			query.setParameter(0,producttypeid);
 			return (Product)query.uniqueResult();
 			
 		}
	
}
