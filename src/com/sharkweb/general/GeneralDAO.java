package com.sharkweb.general;

import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.sharkweb.customer.Customer;
import com.sharkweb.product.Product;
import com.sharkweb.purchase.Purchase;

@Repository
@Transactional
public class GeneralDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Customer getById(int id) {
		return (Customer) sessionFactory.getCurrentSession().get(
				Customer.class, id);
	}
	
	// -------------------------------------------------------------------- searchCustomer

	@SuppressWarnings("unchecked")
	public List<Customer> searchCustomer(String ic) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(
				Customer.class);
		criteria.add(Restrictions.ilike("ic", ic));
		return criteria.list();
	}
	
	// -------------------------------------------------------------------- searchNotpay

	@SuppressWarnings("unchecked")
	public List<Product> searchNotpay() {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DAY_OF_MONTH, -30);
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(
				Product.class);
		criteria.add(Restrictions.lt("orderdate", cal.getTime()));
		System.out.println("criteria: " + criteria.list());
		return criteria.list();
	}
	
	// -------------------------------------------------------------------- getAllCustomer

	@SuppressWarnings("unchecked")
	public List<Customer> getAllCustomer() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(
				Customer.class);
		return criteria.list();
	}
	
	// -------------------------------------------------------------------- getCustomerCount

	@SuppressWarnings("unchecked")
	
	
	public int getCustomerCount() {
		
		String SQL_QUERY = "SELECT COUNT(*) FROM Customer";  
		Query query = sessionFactory.openSession().createQuery(SQL_QUERY);
	    return ((Long) query.uniqueResult()).intValue();  
	}
	
	// -------------------------------------------------------------------- getProductbyid

		@SuppressWarnings("unchecked")
		public List<Product> getProductByID(int id) {
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(
					Product.class);
			criteria.add(Restrictions.eq("customerID", id));
			return criteria.list();
		}
		
	// -------------------------------------------------------------------- save

	public int save(Customer customer) {
		return (Integer) sessionFactory.getCurrentSession().save(customer);
	}
	
	public int saveProduct(Product product) {
		return (Integer) sessionFactory.getCurrentSession().save(product);
	}
	// -------------------------------------------------------------------- update

	public void update(Customer customer) {
		sessionFactory.getCurrentSession().merge(customer);
	}
	
	// -------------------------------------------------------------------- delete

	public void delete(int id) {
		Customer c = getById(id);
		sessionFactory.getCurrentSession().delete(c);
	}

	@SuppressWarnings("unchecked")
	public List<Purchase> getPurchase(Integer id) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(
				Purchase.class);
		criteria.add(Restrictions.eq("customerID", id));
		return criteria.list();
	}

}