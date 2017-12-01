package work.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import work.entity.Product;
import work.entity.ProductSize;
import work.service.ProductServiceImpl;
import work.service.ProductSizeServiceImpl;


@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
	private ProductServiceImpl productService;
	@Resource
	private ProductSizeServiceImpl productSizeService;
	@RequestMapping("/list")
	public String list(Model model,HttpServletRequest request){
		List<Product> list=this.productService.listProducts();
		request.setAttribute("list", list);
		model.addAttribute(list);
		return "list";
	}
	
	@RequestMapping("/content")
	public String findById(@RequestParam(value="id") int id,Model model,HttpServletRequest request){
		Product p = this.productService.findById(id);
		ProductSize ps =this.productSizeService.finds(id);
		request.setAttribute("ps", ps);
		request.setAttribute("p", p);
		return "content";
	}
	@RequestMapping("/type")
	public String findByTypeId(@RequestParam("producttypeid") int producttypeid,HttpServletRequest request){
		Product tpl = this.productService.findByTypeId(producttypeid);
		request.setAttribute("tpl", tpl);
		return "typeproduct";
	}
	 
    
	
	
}

