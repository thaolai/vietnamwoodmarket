/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;


@Entity
@Table(name="CATEGORY")
public class Category {
	
	@Id @GeneratedValue
	@Column(name="Category_ID")
    int categoryID;
	@Column(name="category_name")
    String categoryName;	
	@Column(name="description")
    String description;
	
	 @OneToMany
	 @JoinColumn(name="Category_ID")
    private Set<Product> products;

    public Category( String categoryName, String description) {
        
        this.categoryName = categoryName;
        this.description = description;
        products = new HashSet<Product>();
    }

    public Category() {
        products = new HashSet<Product>();
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<Product> getAllProduct() {
        return products;
    }

    public boolean addProduct(Product p) {
        if (products.contains(p)) {
            return false;
        }
        products.add(p);
        return true;

    }
    
     public boolean removeProduct(Product p) {
        if (!products.contains(p)) {
            return false;
        }
        products.remove(p);
        return true;

    }
}



