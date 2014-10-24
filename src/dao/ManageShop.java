package dao;

import java.util.ArrayList;
import java.util.Iterator;

import model.Category;
import model.Shop;
import model.User;
import model.UserDetail;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import test.test;

public class ManageShop {
	SessionFactory factory=test.getFactory();
	public Integer addShop(String name, User user, String address, String phone){
		if (user.getShop()==null) {
		Shop s=new Shop(name, user, address, phone);
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    session.save(s);
		tx.commit();
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		}finally {
		session.close();
		}
		return 1;
		}
		else
		return 0;
	
	}
	
	public Integer addShop(Shop s){
		
		Session session = factory.openSession();	
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    session.save(s);
		tx.commit();
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		}finally {
		session.close();
		}
		return 1;
		}
	
	
	

	
	
	
	public Shop getShop(String s){
		Session session = factory.openSession();
		String hql = "FROM Shop s WHERE  = shopID='"+s+"'";
		Query query = session.createQuery(hql);
		Shop result = (Shop) query.uniqueResult();
		if(result==null) {
			session.close();
			return null;
		}
		session.close();
		return result;
	}
	
	
	public ArrayList<Shop> listShops(){
		ArrayList<Shop> shops = null ;
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    shops = (ArrayList<Shop>) session.createQuery("FROM Shop").list();
	    if(shops==null) return null;
		for (Iterator iterator =
				shops.iterator(); iterator.hasNext();){
		Shop s = (Shop) iterator.next();
//		System.out.print("First Name: " + user.getDetails().getName());
//		System.out.print(" Last Name: " + user.getUsername());
//		System.out.println(" Salary: " + user.getDetails().getPhone());
		}
		tx.commit();
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		}finally {
		session.close();
		}
		return shops;
	}
	
	
	
	public Integer updateShop(String name, User user, String address, String phone){
		
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		Shop s =user.getShop();
		if(s==null) return 0;
		else{
			
			s.setName(name);
			s.setAddress(address);
			s.setPhone(phone);
			
		session.saveOrUpdate(s);
		tx.commit();
		return 1;
		}
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		return 0;
		}finally {
		session.close();
		
		}
	}
	 public boolean activate(String username){
		 
		 Session session = factory.openSession();
			Transaction tx = null;
			try{
			tx = session.beginTransaction();
			User user =(User)session.get(User.class, username);
			if(user==null) return false;
			
			Shop s = user.getShop();
			s.setActivate(true);
			session.update(s);
			tx.commit();
            return true;
			}finally{
				session.close();
				return false;
				}
	
}

	 public boolean setActivate(String shopId, boolean activate){
			 
			 Session session = factory.openSession();
				Transaction tx = null;
				try{
				tx = session.beginTransaction();
				Shop shop =(Shop)session.get(Shop.class, shopId);
				if(shop==null) {return false;}
				
			
				shop.setActivate(activate);
				session.update(shop);
				tx.commit();
				session.close();
	            return true;
				}finally{
					session.close();
					return false;
					}
		
	}

	 public boolean addCategory(int i, Category c){
		 
		 Session session = factory.openSession();
			Transaction tx = null;
			try{
			tx = session.beginTransaction();
			Shop shop =(Shop)session.get(Shop.class, i);
			if(shop==null) {return false;}
			
		
			shop.AddCategory(c);
			session.update(shop);
			tx.commit();
		
            return true;
			}finally{
				session.close();
				return false;
				}
	
}
	 
	 public boolean deActivate(String username){
		 
		 Session session = factory.openSession();
			Transaction tx = null;
			try{
			tx = session.beginTransaction();
			User user =(User)session.get(User.class, username);
			if(user==null) return false;
			
			Shop s = user.getShop();
			s.setActivate(false);
			session.update(s);
			tx.commit();
         return true;
			}finally{
				session.close();
				return false;
				}
		
}
	 
	 
	 
}
