/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Admin
 */
@Entity
@Table(name="BANNERS")
public class Banner {

	@Id @GeneratedValue
    @Column(name="banner_ID")
    int id;
	
	@Column(name="banner_url")
    String url;
	 
	
	@OneToMany(mappedBy="banner")
    List<Location> locations;
  
	@Column(name="img_path")
	String img_path;

    
    public List<Location> getLocations() {
		return locations;
	}

	public void setLocations(List<Location> locations) {
		this.locations = locations;
	}

    
    public String getImg_path() {
		return img_path;
	}

	public void setImg_path(String img_path) {
		this.img_path = img_path;
	
	}

	public Banner() {
		locations=new ArrayList<Location>();
    }
	
   
    public Banner(String img_path, String url) {
        
        this.url = url;
        this.img_path=img_path;
		locations=new ArrayList<Location>();
       
    }
        public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    public void addLocation(Location s){
    	locations.add(s);
    }
    public void removeLocation(Location s){
    if (locations.contains(s)) {
    	locations.remove(s);
		
	}
    }
}
