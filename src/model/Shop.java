/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.*;



/**
 *
 * @author Admin
 */


@Entity
@Table(name="STORES")
public class Shop {
  @Id @GeneratedValue
  @Column(name="store_ID")
    int shopId;
  @Column(name="name")
    String name;
  @Column(name="activate")
public boolean activate;
  @OneToOne
  @JoinColumn(name = "stor_user_id")
  User user;
	
public Shop(){}
	
  public Shop(String name, User user, String address, String phone) {
	super();
	this.name = name;
	this.user = user;
	this.address = address;
	this.phone = phone;
}


public User getUser() {
	return user;
}


public void setUser(User user) {
	this.user = user;
}


public Shop(String name, String address, String phone) {
	super();
	this.name = name;
	this.address = address;
	this.phone = phone;

}


public boolean isActivate() {
	return activate;
}

public void setActivate(boolean activate) {
	this.activate = activate;
}

@OneToMany
  @JoinColumn(name="Store_ID")
    private Set<Category> categories = new HashSet<Category>();
    
  
	
    @Column(name="adress")
    String address;
    @Column(name="img_path")
    String img_path;
    @Column(name="phone")
    String phone;
   
    @ManyToMany(
            targetEntity=Banner.class,
            cascade={CascadeType.PERSIST, CascadeType.MERGE}
        )
        @JoinTable(
            name="STORE_BANNER",
            joinColumns=@JoinColumn(name="store_ID"),
            inverseJoinColumns=@JoinColumn(name="Banner_ID")
        )
    List<Banner> banners;
    
    public List<Banner> getBanners() {
		return banners;
	}

	public void setBanners(List<Banner> banners) {
		this.banners = banners;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setCategories(Set<Category> categories) {
		this.categories = categories;
	}
	  

	public Set<Category> getCategories() {
        return categories;
    }

    public String getImg() {
        return img_path;
    }

    public void setImg(String img) {
        this.img_path = img;
    }

    public Shop(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getShopId() {
        return shopId;
    }

    public void setShopId(int shopId) {
        this.shopId = shopId;
    }

    public void AddCategory(Category category) {
        if (!this.categories.contains(category)) {
            this.categories.add(category);
        }
    }

    public void RemoveCategory(Category category) {

        if (categories.contains(category)) {
            categories.remove(category);
        }
    }
    
}
