package dao;

import model.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import test.test;

public class Login {
	SessionFactory factory=test.getFactory();
	String username;
	String password;
	
	
	public Login(String username, String password){
		this.username=username;
		this.password=password;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	 public boolean  verifyLogin(){
	       
		    String encodedText= Encoder.Encode(password);
			Session session = HibernateUtil.getSessionFactory().openSession();
			String hql = "FROM User u WHERE u.username ='"+username+"' and u.password= '"+encodedText+"'";
			Query query = session.createQuery(hql);
			User result = (User) query.uniqueResult();
			if(result!=null) {
				session.close();
				return true;
			}
			session.close();
			return false;
			
}
}