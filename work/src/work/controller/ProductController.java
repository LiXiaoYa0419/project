package work.controller;

 
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
 
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import work.entity.Product;
import work.entity.ProductSize;
import work.entity.User;
import work.service.ProductServiceImpl;
import work.service.ProductSizeServiceImpl;
import work.service.UserServiceImpl;
@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
	private ProductServiceImpl productService;
	@Resource
	private ProductSizeServiceImpl productSizeService;
	@Resource
	private UserServiceImpl userService;
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
		List<ProductSize> ps =this.productSizeService.finds(id);
		request.setAttribute("ps", ps);
		request.setAttribute("p", p);
		return "content";
	}
	@RequestMapping("/hotlist")
	public String hotlist(Model model,HttpServletRequest request){
		List<Product> list=this.productService.listProducts();
		request.setAttribute("list", list);
		model.addAttribute(list);
		return "list";
	}
	@RequestMapping("/hot")
	public String findByIds(@RequestParam(value="id") int id,Model model,HttpServletRequest request){
		Product p = this.productService.findById(id);
		List<ProductSize> ps =this.productSizeService.finds(id);
		request.setAttribute("ps", ps);
		request.setAttribute("p", p);
		return "hotproduct";
	}
	
	
	@RequestMapping("/newProduct")
	public String newProduct(HttpSession session) throws ParseException {
		
		List<Product> list = productService.listProducts();
		ListSortN(list);
		list = list.subList(0, 4);
		session.setAttribute("list", list);
		return "newProduct";
	}
	
    private static void ListSortN(List<Product> list) {  
        Collections.sort(list, new Comparator<Product>() {  
            @Override  
            public int compare(Product o1, Product o2) {  
                SimpleDateFormat format = new SimpleDateFormat( "yyyy-MM-dd" );
                try {  
                    Date dt1 = format.parse(o1.getProductTime());  
                    Date dt2 = format.parse(o2.getProductTime());  
                    if (dt1.getTime() < dt2.getTime()) {  
                        return 1;  
                    } else if (dt1.getTime() > dt2.getTime()) {  
                        return -1;  
                    } else {  
                        return 0;  
                    }  
                } catch (Exception e) {  
                    e.printStackTrace();  
                }  
                return 0;  
            }  
        });  
    }

	 
	
	
	
	
}

