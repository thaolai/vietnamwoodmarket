/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Admin
 */
@Entity
@Table(name="RECRUITMENTS")
public class Recruit_news {
	
	  @Column(name="exDate")
	Date exDate;
	  @Column(name="location")
	String location;
	  @Column(name="salary")
	String salary;
	 @Id @GeneratedValue
		@Column(name="ID")
	    int id;
		@Column(name="title")
	    String title;
		@Column(name="description")
	    String description;
		@Column(name="img_path")
	    String img_path;
		@Column(name="postedDate")
		Date posteddate;
		
		public Date getPosteddate() {
			return posteddate;
		}

		public void setPosteddate(Date posteddate) {
			this.posteddate = posteddate;
		}

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

	public Recruit_news() {
		super();
	}
	public Recruit_news(String position, Date exDate, String location,
			String salary) {
		super();
		this.exDate = exDate;
		this.location = location;
		this.salary = salary;
	}
	
	public Date getExDate() {
		return exDate;
	}
	public void setExDate(Date exDate) {
		this.exDate = exDate;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}

	public Recruit_news(String title,String location, String salary,
			String description, String img_path, Date posteddate,  Date exDate, 
			model.User user, String details) {
		super();
		this.exDate = exDate;
		this.location = location;
		this.salary = salary;
		this.title = title;
		this.description = description;
		this.img_path = img_path;
		this.posteddate = posteddate;
		User = user;
		this.details = details;
	}


	
    

}
