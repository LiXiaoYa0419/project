package work.dao;



import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import work.entity.Order;
import work.entity.Product;
import work.entity.User;

@Repository
public class UserDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	
	public User addUser(User u){
		if(u.getLoginName() != "" && u.getPassword() != "" && u.getEmail() != ""){
			this.sessionFactory.getCurrentSession().save(u);
			return u;
		}else
			return null;
		
	}
	public User findByName(String loginName) {
		String hql = "from User u where u.loginName=:loginName";  
        Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter("loginName", loginName);
        return (User)query.uniqueResult();
    }  
	public User findByPassword(String password) {
        String hq2 = "from User u where u.password=:password";  
        Query query = this.sessionFactory.getCurrentSession().createQuery(hq2);  
        query.setParameter("password", password);
          
        return (User) query.uniqueResult();  
    }  
	
	public Order addOrderUser(Order o){
		if(o.getAddress() != "" && o.getName() != "" && o.getPhone() != ""){
			this.sessionFactory.getCurrentSession().save(o);
			return o;
		}else
			return null;
	} 
	public Order findByAddress(String address){
		String hql = "from Order o where o.address=?";  
        Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter(0, address);
        return (Order)query.uniqueResult();
    } 
	public Order findByUserName(String name){
		String hql = "from Order o where o.name=?";  
        Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter(0, name);
        return (Order)query.uniqueResult();
	}
	public Order findByPhone(String phone){
		String hql = "from Order o where o.phone=?";  
        Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter(0, phone);
        return (Order)query.uniqueResult();
	}
}
   

