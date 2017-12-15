package work.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

 

@Repository
public class OrderDao {
	@Resource
	private SessionFactory sessionFactory;
	
	 
}
