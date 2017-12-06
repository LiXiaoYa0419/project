package work.service;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import work.dao.ProductDaoImpl;
import work.dao.UserDaoImpl;
import work.entity.Product;
import work.entity.User;

@Service
@Transactional(readOnly=true)
public class UserServiceImpl {
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
	
}
