/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.*;

@MappedSuperclass 
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public abstract class Article {
	@Id @GeneratedValue
	@Column(name="ID")
    int id;
	@Column(name="title")
    String title;
	@Column(name="description")
    String description;
	@Column(name="img_path")
    String img_path;
	
	@ManyToOne
	@JoinColumn(name = "User")
    User User;
	@Column(name="details")
	String details;
	   
    public User getUser() {
		return User;
	}

	public void setUser(User poster) {
		this.User = poster;
	}

	
	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public Article() {
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img_path;
    }

    public void setImg_path(String img) {
        this.img_path = img;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
}
