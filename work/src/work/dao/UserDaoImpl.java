package work.dao;



import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

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
	public Product selectById(int id) {
		return (Product)sessionFactory.getCurrentSession().createQuery("from Product p where p.id = :id").setParameter("id",id).uniqueResult();
		
	}
	
	public void updateInfo(String loginName,String newPassword) {
		String hql = "update user set age=?,phone=? where loginName=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(1, loginName);
        if(loginName!=null){
				query.setParameter(0,newPassword);
				
		}
        query.executeUpdate();
		
	}
	
	
}
   

