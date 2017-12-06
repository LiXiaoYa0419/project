package work.service;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import work.dao.ProductSizeDaoImpl;
import work.entity.ProductSize;

@Transactional
@Service
public class ProductSizeServiceImpl {
	
	@Resource
	private ProductSizeDaoImpl productsizedao;
	
	
	public List<ProductSize> finds(int id){
		return (List<ProductSize>)productsizedao.findById(id);
	}
}
