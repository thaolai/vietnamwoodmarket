package dao;

import model.Admin;
import model.Adv_news;
import model.Article;
import model.Banner;
import model.Category;
import model.Location;
import model.News;
import model.Product;
import model.Recruit_news;
import model.Shop;
import model.ShopOwner;
import model.User;
import model.UserDetail;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    	private static final SessionFactory sessionFactory;
    	 static {
    	  try {
    	   sessionFactory =  new AnnotationConfiguration().configure().addPackage("model").addAnnotatedClass(User.class).
					addAnnotatedClass(Admin.class).addAnnotatedClass(ShopOwner.class).addAnnotatedClass(Article.class).
					addAnnotatedClass(Adv_news.class).addAnnotatedClass(News.class).addAnnotatedClass(UserDetail.class).
					addAnnotatedClass(Shop.class).addAnnotatedClass(Category.class).addAnnotatedClass(Product.class)
					.addAnnotatedClass(Location.class).addAnnotatedClass(Banner.class).addAnnotatedClass(Recruit_news.class)
					.buildSessionFactory();
    	  } catch (Throwable ex) {
    	   System.err.println("Initial SessionFactory creation failed." + ex);
    	   throw new ExceptionInInitializerError(ex);
    	  }
    
    }
    
    	  public static SessionFactory getSessionFactory(){
    	  return sessionFactory;
    	 }
	
    
}
