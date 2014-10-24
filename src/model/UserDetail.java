/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 *
 * @author Admin
 */
@Entity
@Table(name="USERDETAIL")
public class UserDetail {
	
	@GenericGenerator(name = "generator", strategy = "foreign", 
	parameters = @Parameter(name = "property", value = "user"))
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "Username", unique = true, nullable = false)
	String username;
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name="name")
    String name;
	@Column(name="address")
    String address;
	@Column(name="phone")
    String phone;
	@Column(name="email")
    String email;
	@Column(name="company")
    String company;
	
	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	User user;

    public UserDetail(String name, String address, String phone, String email) {
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;

    }

    public UserDetail() {

    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public UserDetail(String username, String name, String address,
			String phone, String email, String company, User user) {
		super();
		this.username = username;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.company = company;
		this.user = user;
	}

	public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
   
}
