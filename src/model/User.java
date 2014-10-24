/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import dao.Login;


/**
 *
 * @author Admin
 */

@Entity
@Table(name="USERS")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "USER_TYPE", discriminatorType = DiscriminatorType.STRING)
public class User {
	@Id 
	@Column(name="Username")
    private String username;
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
		adv_news=new ArrayList<Adv_news>();
		products=new ArrayList<Product>();
		recruitments=new ArrayList<Recruit_news>();
	}

	@Column(name="password")
    private String password;
	@Column(name="enable")
	public boolean enable;
	
    
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "user", cascade = CascadeType.ALL)
	UserDetail details;
    
    @Transient
    Login login;
    public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	public UserDetail getDetails() {
		return details;
	}

	public void setDetails(UserDetail details) {
		this.details = details;
	}

	public List<Adv_news> getAdv_news() {
		return adv_news;
	}

	public void setAdv_news(List<Adv_news> adv_news) {
		this.adv_news = adv_news;
	}

	public boolean isEnable() {
		return enable;
	}

	@OneToMany( targetEntity = Adv_news.class, mappedBy = "User", cascade = CascadeType.ALL)
	List<Adv_news> adv_news;        
    
    
    public void addAdv_news(Adv_news a) {
    	adv_news.add(a);	
	}

    public void removeAdv_news(Article a) {
    	if(adv_news.contains(a)) adv_news.remove(a);
	}
    
    @OneToMany(mappedBy="User", cascade = CascadeType.ALL)
    List<Recruit_news> recruitments;


	public List<Recruit_news> getRecruitments() {
		return recruitments;
	}

	public void setRecruitments(List<Recruit_news> recruitments) {
		this.recruitments = recruitments;
	}


	@OneToMany(fetch = FetchType.EAGER, targetEntity = Product.class, mappedBy = "user", cascade = CascadeType.ALL)
	    List<Product> products;


		

	
    public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public boolean login(){
    login=new Login(username, password);	
    return login.verifyLogin(); 	
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

    public boolean enable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }
   
    
    
     @OneToOne(mappedBy = "user")
	 Shop shop;
	 public boolean createShop(String name) {
	        if (shop ==null) {
	        	 shop = new Shop(name); 
	        	 shop.setActivate(true);
	        	 return true;
	        } 
	        return false; 

	    }

	 
	 public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		if(this.shop==null)
		this.shop = shop;
	}

	public boolean activeShop() {
	        if (shop ==null) {
	        	 return false;
	        }
	       shop.setActivate(true);
	        return true;

	    }
	 
	 public boolean deActiveShop() {
	        if (shop ==null) {
	            return false;
	        }
	        shop.setActivate(false);
	        return true;

	    }
	 
	 public void addRecruitment(Recruit_news r){
		 recruitments.add(r);
		 
	 }
	 public void removeRecruitment(Recruit_news r){
		 if(recruitments.contains(r)) recruitments.remove(r);
		 
	 }
	 
	 public void addProduct(Product p){
		 products.add(p);
		 
	 }
	 public void removeProductt(Product p){
		 if(products.contains(p)) products.remove(p);
		 
	 }
	 
	 public void addAdvNew(Adv_news a){
		 adv_news.add(a);
		 
	 }
	 public void removeAdvNew(Adv_news r){
		 if(adv_news.contains(r)) adv_news.remove(r);
		 
	 }

	public User() {
		adv_news=new ArrayList<Adv_news>();
		products=new ArrayList<Product>();
		recruitments=new ArrayList<Recruit_news>();
	}
	 
	 
}
