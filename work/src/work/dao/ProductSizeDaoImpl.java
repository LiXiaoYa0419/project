package work.dao;



import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import work.entity.ProductSize;

@Repository
public class ProductSizeDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<ProductSize> findById(int id){
		String hql = "from ProductSize where productid =:productid";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("productid",id);
		return query.list();
	}

}
