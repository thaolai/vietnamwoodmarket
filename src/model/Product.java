/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

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
@Table(name="PRODUCTS")
public class Product{
	@Id @GeneratedValue
	@Column(name="product_ID")
    int productID;
	@Column(name="name")
    String name;
	@Column(name="price")
    float price;
	@Column(name="madein")
    String xuatxu;
	@Column(name="unit")
    String donvi;
	@Column(name="packing")
    String donggoi;
	@Column(name="supply_capability")
    String khanangcc;
	@Column(name="supply_date")
    Date ngaycapnhat;
	@Column(name="store_url")
    String webdoanhnghiep;
	@Column(name="description")
    String description;
	@Column(name="img_path")
    String img_path;

	@Column(name="posted_date")
    Date ngayHetHan;
	
	public Date getNgayHetHan() {
		return ngayHetHan;
	}

	public void setNgayHetHan(Date ngayHetHan) {
		this.ngayHetHan = ngayHetHan;
	}

	@ManyToOne
	@JoinColumn(name="User")
	User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@ManyToOne
	@JoinColumn(name="Category_ID")
	Category category;
	
    public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Date getPosteddate() {
		return ngayHetHan;
	}

	public void setPosteddate(Date ngayHethan) {
		this.ngayHetHan = ngayHethan;
	}

	public Product() {
    }

    public Product(int productID, String name, float price, String xuatxu, String donvi, String donggoi, String khanangcc, Date ngaycapnhat, Date ngayhethan, String webdoanhnghiep, String description) {
        this.productID = productID;
        this.name = name;
        this.price = price;
        this.xuatxu = xuatxu;
        this.donvi = donvi;
        this.donggoi = donggoi;
        this.khanangcc = khanangcc;
        this.ngaycapnhat = ngaycapnhat;
        this.webdoanhnghiep = webdoanhnghiep;
        this.description = description;
        this.ngayHetHan = ngayhethan;
    }

    public Product(int productID, String name, float price, String xuatxu, String donvi, String donggoi, String khanangcc, Date ngaycapnhat, String webdoanhnghiep, String description, String img) {
        this.productID = productID;
        this.name = name;
        this.price = price;
        this.xuatxu = xuatxu;
        this.donvi = donvi;
        this.donggoi = donggoi;
        this.khanangcc = khanangcc;
        this.ngaycapnhat = ngaycapnhat;
        this.webdoanhnghiep = webdoanhnghiep;
        this.description = description;
        this.img_path = img;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDonggoi() {
        return donggoi;
    }

    public void setDonggoi(String donggoi) {
        this.donggoi = donggoi;
    }

    public String getDonvi() {
        return donvi;
    }

    public void setDonvi(String donvi) {
        this.donvi = donvi;
    }

    public String getKhanangcc() {
        return khanangcc;
    }

    public void setKhanangcc(String khanangcc) {
        this.khanangcc = khanangcc;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getNgaycapnhat() {
        return ngaycapnhat;
    }

    public void setNgaycapnhat(Date ngaycapnhat) {
        this.ngaycapnhat = ngaycapnhat;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getWebdoanhnghiep() {
        return webdoanhnghiep;
    }

    public void setWebdoanhnghiep(String webdoanhnghiep) {
        this.webdoanhnghiep = webdoanhnghiep;
    }

    public String getXuatxu() {
        return xuatxu;
    }

    public void setXuatxu(String xuatxu) {
        this.xuatxu = xuatxu;
    }
    
    
   public String getImg() {
        return img_path;
    }

    public void setImg(String img) {
        this.img_path = img;
    }

}