package dao;

import java.sql.Date;
import java.util.ArrayList;

import model.Adv_news;
import model.Category;
import model.Product;
import model.Recruit_news;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import test.test;

public class ManageRecruitment {

SessionFactory factory=test.getFactory();
	
	public Integer addRecruitment( Recruit_news adv){
		
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
	
	
	
	public ArrayList<Recruit_news> listAdvs(){
		ArrayList<Recruit_news> ads = null ;
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		ads = (ArrayList<Recruit_news>) session.createQuery("FROM Recruit_news").list();
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
		

public Integer updateRecruit_news(int id, 
		String title, String description,  String location, String salary, String img_path, Date posteddate,Date exDate,
		model.User user, String details) {
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		Recruit_news a =(Recruit_news)session.get(Recruit_news.class, id);
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
	public Integer deleteRecruit_news(String id){

		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		Recruit_news a =(Recruit_news)session.get(Recruit_news.class, id);
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
