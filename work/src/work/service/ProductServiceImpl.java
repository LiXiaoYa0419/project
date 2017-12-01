package work.service;

import java.util.List;

import javax.annotation.Resource;

 
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import work.dao.ProductDaoImpl;
 
import work.entity.Product;

@Transactional
@Service
public class ProductServiceImpl {
	@Resource
	public ProductDaoImpl productDao;
	
	public List<Product> listProducts(){
		return (List<Product>)this.productDao.findAll();
	}
	public Product findById(int id){
		return (Product) productDao.findById(id);
	}
	public Product findByTypeId(int producttypeid){
		return (Product)this.productDao.findByTypeId(producttypeid);
		
	}
}
