package work.service;



import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import work.dao.ProductSizeDaoImpl;
import work.entity.ProductSize;

@Transactional
@Service
public class ProductSizeServiceImpl {
	
	@Resource
	private ProductSizeDaoImpl productdao;
	
	
	public ProductSize finds(int id){
		return (ProductSize)productdao.findById(id);
	}
}
