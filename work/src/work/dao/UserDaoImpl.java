package work.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

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
	 
	 
}
   

