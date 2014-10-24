package dao;

import java.util.ArrayList;
import model.Category;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import test.test;

public class ManageCategory {
	SessionFactory factory=test.getFactory();
	
	public Integer addCategory( String categoryName, String description){
		Category c=new Category(categoryName, description);
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    session.save(c);
		tx.commit();
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		return 0;
		}finally {
		session.close();
		}
		return 1;


		
	}
	
	public Integer addCategory( Category c){
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    session.save(c);
		tx.commit();
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		return 0;
		}finally {
		session.close();
		}
		return 1;


		
	}

	
	public ArrayList<Category> listCategories(){
		ArrayList<Category> Categories = null ;
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		Categories = (ArrayList<Category>) session.createQuery("FROM Category").list();
	    if(Categories==null) return null;
	    return Categories;
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		return null;
		}finally {
		session.close();
		}
		
	}
		
	
public Integer updateCategory(String id, String categoryName, String description){
		
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		Category cat =(Category)session.get(Category.class, id);
		if(cat==null) return 0;
		else{
			
			cat.setCategoryName(categoryName);
			cat.setDescription(description);
		session.update(cat);
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
	public Integer deleteCategory(String id){

		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		Category cat =(Category)session.get(Category.class, id);
		if(cat==null) return 0;
		else{
		session.delete(cat);
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
}
