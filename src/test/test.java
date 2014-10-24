package test;


import java.io.Console;
import java.sql.Date;
import java.util.List;

import model.*;

import org.hibernate.*;
import org.hibernate.cfg.AnnotationConfiguration;

import dao.Login;
import dao.ManageAdv_News;
import dao.ManageCategory;
import dao.ManageNews;
import dao.ManageProduct;
import dao.ManageRecruitment;
import dao.ManageShop;
import dao.ManageUser;

public class test {
	private static SessionFactory factory;
	public static SessionFactory getFactory() {
		return factory;
	}
	public static void setFactory(SessionFactory factory) {
		test.factory = factory;
	}
	@SuppressWarnings("deprecation")
	public static void main(String[] args){
		
		try{
			factory=  new AnnotationConfiguration().configure().addPackage("model").addAnnotatedClass(User.class).
					addAnnotatedClass(Admin.class).addAnnotatedClass(ShopOwner.class).addAnnotatedClass(Article.class).
					addAnnotatedClass(Adv_news.class).addAnnotatedClass(News.class).addAnnotatedClass(UserDetail.class).
					addAnnotatedClass(Shop.class).addAnnotatedClass(Category.class).addAnnotatedClass(Product.class)
					.addAnnotatedClass(Location.class).addAnnotatedClass(Banner.class).addAnnotatedClass(Recruit_news.class)
					.buildSessionFactory();
			
			
		}catch(Throwable e){
			System.err.print(".........................................................."+ e);
			throw new ExceptionInInitializerError(e);
			
			
		}
		
		ManageUser mu=new ManageUser();
//		Admin u = (Admin) mu.getUser("ADMIN");
//		System.out.println( u.getClass().toString());
	    
		
	   
		
//		mu.addUser("user2", "123", "test", "email", "phone", "cmnd", "address", "company");
//		Shop s= new Shop("shop2","aaaa", "987654");

//		mu.updatePass("user", "123", "12345");
		
//		Login l=new Login("user", "12345");
//		mu.deActivate("user");
		mu.updateUser("user2", "Thao", "thao@", "thao0", "taocmnd", "diachi", "conty");
//		l.verifyLogin();
	    User u =mu.getUser("user2");
//		u.setShop(s);
	//	s.setUser(u);
		ManageShop ms = new ManageShop();
		List<Shop> ss= ms.listShops();
//		for(int i= 0; i< ss.size(); i++){
//			System.out.println("u:shop"+ ss.get(i).getUser().getUsername() );
//			
//		}
		
		
//		Shop s2=new Shop("shop", u, "address", "ssss");
//		ms.addShop(s2);
//	Shop s = u.getShop();
//	System.out.println(s.getName());
//	System.out.println(s.getUser().getUsername());
	
	List<User> us = mu.listUsers();
	for(int i= 0; i< us.size(); i++){
		System.out.println("u:"+ us.get(i).getUsername() );
		
	}
	
	Category category = new Category("test3", "test2");
	ManageCategory mc=new ManageCategory();
//	
//	
//	    List<Shop> ss = ms.listShops();
	    mc.addCategory(category);
//		System.out.println("u:"+ ss.get(0).getName() );
//		System.out.println("u:"+ ss.get(0).getUser().getUsername() );
	    ms.addCategory(ss.get(0).getShopId(), category);
//	    
	    
	Category c = mc.listCategories().get(0);
		
	ManageProduct mp=new ManageProduct();
	List<Product> ps = 	mp.listProductsByCategory(c.getCategoryID());
	System.out.println(ps.size());
		
//		
//		
		Product p= new Product();
		p.setDonggoi("test");
		p.setCategory(c);
		p.setDescription("test");
		p.setDonvi("test");
		p.setImg("test");
		p.setKhanangcc("test888");
		p.setName("test");
		p.setNgaycapnhat(new Date(19, 2, 2012));
		p.setPosteddate(new Date(1000));
		p.setPrice(1000);
		p.setWebdoanhnghiep("html://aaaa");
		p.setXuatxu("test");
		p.setImg("test");
		p.setUser(us.get(1));
	    us.get(1).addProduct(p);
	//	ManageProduct mp2=new ManageProduct();
    //	mp.addProduct(p);
//		
    	
    	
    	ManageAdv_News mn =new ManageAdv_News();
    	Adv_news ad=new Adv_news( "title"," description", "img_path", us.get(1), "details",new Date(19, 2, 2012) , new Date(19, 2, 2012), "kkkk", "kk");
	    mn.addAdv_New(ad);
	    
	    
	    ManageRecruitment mr =new ManageRecruitment();
    	Recruit_news ad2=new Recruit_news("title","String location", "String salary",
    			"String description", "String img_path", new Date(19, 2, 2012) , new Date(19, 2, 2012) , 
    			us.get(1), "bbbb");
	    mr.addRecruitment(ad2);
	}
}
