package dao;

import java.sql.Date;
import java.util.ArrayList;

import model.Adv_news;
import model.Category;
import model.Product;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import test.test;

public class ManageAdv_News {
SessionFactory factory=test.getFactory();
	
	public Integer addAdv_New( Adv_news adv){
		
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    session.save(adv);
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
	
	
	
	public ArrayList<Adv_news> listAdvs(){
		ArrayList<Adv_news> ads = null ;
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		ads = (ArrayList<Adv_news>) session.createQuery("FROM Adv_news").list();
	    if(ads==null) return null;
	    return ads;
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		return null;
		}finally {
		session.close();
		}
		
	}
		

public Integer updateAdv_News(int id, String title, String description, String img_path,
		model.User user, String details, Date exDate, Date posteddate,
		String location, String form) {
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		Adv_news a =(Adv_news)session.get(Adv_news.class, id);
		if(a==null) return 0;
		else{
			
			
			a.setTitle(title);
			a.setDescription(description);
			a.setImg_path(img_path);;
			a.setUser(user);
			a.setDetails(details);
			a.setExDate(exDate);
			a.setPosteddate(posteddate);
			a.setLocation(location);
			a.setForm(form);       
		        
		session.update(a);
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
	public Integer deleteAdv_News(String id){

		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		Adv_news a =(Adv_news)session.get(Adv_news.class, id);
		if(a==null) return 0;
		else{
		session.delete(a);
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
