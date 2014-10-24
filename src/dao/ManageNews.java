package dao;

import java.util.ArrayList;
import model.News;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import test.test;

public class ManageNews {

	SessionFactory factory=test.getFactory();
	public Integer addNews(String title, String img_path,  String details,String source){
		
		News news= new News(title, img_path, details, source);
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    session.save(news);
		tx.commit();
		return 1;
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		return 0;
		}finally {
		session.close();
		}

		}
		
	
	
	public ArrayList<News> listNews(){
		ArrayList<News> news = null ;
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    news = (ArrayList<News>) session.createQuery("FROM News").list();
	    if(news==null) return null;
	    return news;
		}finally {
		session.close();
		}
		
	}
	
	
	public Integer updateNews(String id,String title, String img_path,  String details,String source){
		
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		News n =(News)session.get(News.class, id);
		if(n==null) return 0;
		else{
		n.setDetails(details);
		n.setImg_path(img_path);
		n.setTitle(title);
		n.setSource(source);
		session.update(n);
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
	public Integer deleteNews(String id){
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		News n =(News)session.get(News.class, id);
		if(n==null) return 0;
		
		session.delete(n);
		tx.commit();
		return 1;
		
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		return 0;
		}finally {
		session.close();
		
		}
	}	
}
