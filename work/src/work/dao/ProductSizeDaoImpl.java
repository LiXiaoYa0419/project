package work.dao;



import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import work.entity.ProductSize;

@Repository
public class ProductSizeDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public ProductSize findById(int id) {
 		return (ProductSize)this.sessionFactory.getCurrentSession().get(ProductSize.class, id);
 	    }

}
