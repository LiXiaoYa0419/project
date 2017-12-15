package work.service;


import java.text.SimpleDateFormat;
import java.util.Date;

import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import work.dao.UserDaoImpl;

import work.entity.OrderItem;
import work.entity.Product;
import work.entity.User;
import work.entity.cart.CartItem;

@Service
 
public class UserServiceImpl{
	@Resource
	private UserDaoImpl userDao;
	 
	public User addUser(User u){
		User u1 = this.userDao.addUser(u);
		if(u1 != null)
			return u1;
		else 
			return null;
	}
	public User findName(String loginName){
		User u=this.userDao.findByName(loginName);
		if(u != null){
			return u;
		}else{
			return null;
		}
		
	}
	public User findPassword(String password) {
		User u3=this.userDao.findByPassword(password);
		if(u3 != null)
			return u3;
		else 
			return null;
    }  
	public Product addProductToCart(int id){
		return (Product) userDao.selectById(id);
	}
	
	public void updateInfo(String loginName,String newPassword) {
		this.userDao.updateInfo(loginName, newPassword);
	}
	 
}
