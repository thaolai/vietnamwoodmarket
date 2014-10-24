package dao;

import java.sql.Date;
import java.util.ArrayList;

import model.Category;
import model.Product;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import test.test;

public class ManageProduct {
	SessionFactory factory=test.getFactory();
	
	public Integer addProduct( Product p){
		
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    session.save(p);
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
	
	
	
	public ArrayList<Product> listProducts(){
		ArrayList<Product> products = null ;
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		products = (ArrayList<Product>) session.createQuery("FROM Product").list();
	    if(products==null) return null;
	    return products;
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		return null;
		}finally {
		session.close();
		}
		
	}
		
	
public Integer updateProduct(int productID, String name, float price, String xuatxu, String donvi, String donggoi, String khanangcc, Date ngaycapnhat, Date ngayHetHan, String webdoanhnghiep, String description, String img){
		
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		Product p =(Product)session.get(Product.class, productID);
		if(p==null) return 0;
		else{
			
			
		     p.setName(name);
		     p.setPrice(price);
		     p.setXuatxu(xuatxu);
		     p.setDonvi(donvi);
		     p.setDonggoi(donggoi);
		     p.setKhanangcc(khanangcc);
		     p.setNgaycapnhat(ngaycapnhat);
	         p.setNgayHetHan(ngayHetHan);
             p.setDescription(description);
   	         p.setImg(img);
		        
		        
		session.update(p);
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
	
	
	public ArrayList<Product> listProductsByCategory(int i){
		ArrayList<Product> products = null ;
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		products = (ArrayList<Product>) session.createQuery("FROM Product where Category_ID = '"+ i+"'").list();
	    if(products==null) return null;
	    return products;
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		return null;
		}finally {
		session.close();
		}
		
	}
		

}
