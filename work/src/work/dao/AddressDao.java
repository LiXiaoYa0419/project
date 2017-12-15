package work.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import work.entity.Address;
import work.entity.User;

@Repository
public class AddressDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public Address save(Address a){
		if(a.getAddress()!= ""){
			this.sessionFactory.getCurrentSession().save(a);
			return a;
		}else
			return null;
	}
	public Address findByAddress(String address){
		String hql = "from Address a where a.address=:address";  
        Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter("address", address);
        return (Address)query.uniqueResult();
	}
	public Address findByName(String name){
		String hql = "from Address a where a.name=:name";  
        Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter("name", name);
        return (Address)query.uniqueResult();
	}
	public Address findByPhone(String phone){
		String hql = "from Address a where a.phone=:phone";  
        Query query = this.sessionFactory.getCurrentSession().createQuery(hql);  
        query.setParameter("phone", phone);
        return (Address)query.uniqueResult();
	}
}
