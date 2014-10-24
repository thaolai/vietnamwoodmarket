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
@Table(name="ADV_News")
public class Adv_news{
	
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
	@Column(name="exDate")
	Date exDate;
	@Column(name="postedDate")
	Date posteddate;
	@Column(name="location")
	String location;
	@Column(name="form")
	String form;
	
	public Adv_news() {
		super();
	}
	public Date getExDate() {
		return exDate;
	}
	public void setExDate(Date exDate) {
		this.exDate = exDate;
	}
	public Date getPosteddate() {
		return posteddate;
	}
	public void setPosteddate(Date posteddate) {
		this.posteddate = posteddate;
	}
	public String getLocation() {
		return location;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public User getUser() {
		return User;
	}
	public void setUser(User user) {
		User = user;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getForm() {
		return form;
	}
	public void setForm(String form) {
		this.form = form;
	}
	public Adv_news( String title, String description, String img_path,
			model.User user, String details, Date exDate, Date posteddate,
			String location, String form) {
		super();
		this.title = title;
		this.description = description;
		this.img_path = img_path;
		User = user;
		this.details = details;
		this.exDate = exDate;
		this.posteddate = posteddate;
		this.location = location;
		this.form = form;
	}
	
	
	
	
	
}
