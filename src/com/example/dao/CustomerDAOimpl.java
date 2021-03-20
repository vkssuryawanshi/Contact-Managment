package com.example.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.entity.Customer;

@Repository
public class CustomerDAOimpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Customer> getCustomers() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Customer> theQuery = session.createQuery("from Customer where is_active=true order by lastName", Customer.class);
		
		List<Customer> customers = theQuery.getResultList();
		
		return customers;
	}

	@Override
	public void saveCustomer(Customer customer) {
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
		
	}

	@Override
	public Customer getCustomer(int id) {
		return sessionFactory.getCurrentSession().get(Customer.class, id);
		
	}

	@Override
	public void deleteCustomer(int id) {
		Customer customer = sessionFactory.getCurrentSession().get(Customer.class, id);
		customer.setIsActive(false);
		 sessionFactory.getCurrentSession().saveOrUpdate(customer);//.delete(customer);
	}
	
	
	
	
	
	

}
