package dao;

import java.util.ArrayList;
import java.util.Iterator;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import test.test;

import model.User;
import model.UserDetail;

public class ManageUser {
	SessionFactory factory=test.getFactory();
	public Integer addUser(String username, String password, String name, String email, String phone, String cmnd, String address, String company){
		if(validateUsername(username)){
		String encodedText= Encoder.Encode(password);
		Session session = factory.openSession();
		User user=new User();
		user.setEnable(false);
		user.setPassword(encodedText);
		user.setUsername(username);
		UserDetail ud=new UserDetail();
		ud.setAddress(address);
		ud.setEmail(email);
		ud.setName(name);
		ud.setPhone(phone);
		ud.setCompany(company);
		user.setDetails(ud);
		ud.setUser(user);
		
		
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    session.save(user);
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
	
	public Integer addUser(User user){
		
		Session session = factory.openSession();	
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    session.save(user);
		tx.commit();
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		}finally {
		session.close();
		}
		return 1;
		}
	
	
	
	
	public boolean validateUsername(String us){
		Session session = factory.openSession();
		String hql = "FROM User u WHERE u.username ='"+us+"'";
		Query query = session.createQuery(hql);
		User result = (User) query.uniqueResult();
		if(result==null) {
			session.close();
			return true;
		}
		session.close();
		return false;
		
		
	}
	
	
	
	
	public User getUser(String us){
		Session session = factory.openSession();
		String hql = "FROM User u WHERE u.username ='"+us+"'";
		Query query = session.createQuery(hql);
		User result = (User) query.uniqueResult();
		if(result==null) {
			session.close();
			return null;
		}
		session.close();
		return result;
	}
	
	
	public ArrayList<User> listUsers(){
		ArrayList<User> users = null ;
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
	    users = (ArrayList<User>) session.createQuery("FROM User").list();
	    if(users==null) return null;
		for (Iterator iterator =
		users.iterator(); iterator.hasNext();){
		User user = (User) iterator.next();
		System.out.print("First Name: " + user.getDetails().getName());
		System.out.print(" Last Name: " + user.getUsername());
		System.out.println(" Salary: " + user.getDetails().getPhone());
		}
		tx.commit();
		}catch (HibernateException e) {
		if (tx!=null) tx.rollback();
		e.printStackTrace();
		}finally {
		session.close();
		}
		return users;
	}
	
	
	
	public Integer updateUser(String username, String name, String email, String phone, String cmnd, String address, String company){
		
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		User user =(User)session.get(User.class, username);
		if(user==null) return 0;
		else{
			
			UserDetail ud =(UserDetail)session.get(UserDetail.class, username);
			ud.setAddress(address);
			ud.setEmail(email);
			ud.setName(name);
			ud.setPhone(phone);
			user.setDetails(ud);
			ud.setUser(user);
			ud.setCompany(company);
			
		session.saveOrUpdate(user);
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
	public Integer deleteUser(String username){
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		User user =(User)session.get(User.class, username);
		if(user==null) return 0;
		else{
		session.delete(user);
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
	
public Integer updatePass(String username, String oldPass, String newPass){
		
		Session session = factory.openSession();
		Transaction tx = null;
		try{
		tx = session.beginTransaction();
		User user =(User)session.get(User.class, username);
		if(user==null) return 0;
		else{

       if(!user.getPassword().equals( Encoder.Encode( oldPass))) return 0;
		String encodedText= Encoder.Encode(newPass);
        user.setPassword(encodedText);	
		session.update(user);
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
			user.setEnable(true);
			session.update(user);
			tx.commit();
            return true;
			}finally {
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
			user.setEnable(false);
			session.update(user);
			tx.commit();
			return true;

			}finally {
				session.close();
				return false;
				}
	
}
	

}
