package model;

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
@Table(name="LOCATIONS")
public class Location {

	@Id @GeneratedValue
    @Column(name="location_ID")
    int location_id;
	
	
	@ManyToOne
	@JoinColumn(name="banner_ID")
	Banner banner;
	
	@Column(name="col")
	int col;
	
	@Column(name="index_number")
	int index;
	
	
	public Location(Banner banner, int column, int index, Shop shop) {
		super();
		this.banner = banner;
		this.col = column;
		this.index = index;
//		this.shop = shop;
	}
	
	public Location(){}
	
//	public int getID() {
//		return ID;
//	}
//	public void setID(int iD) {
//		ID = iD;
//	}
	public Banner getBanner() {
		return banner;
	}
	public void setBanner(Banner banner) {
		this.banner = banner;
	}
	public int getColumn() {
		return col;
	}
	public void setCol(int column) {
		this.col = column;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
//	public Shop getShop() {
//		return shop;
//	}
//	public void setShop(Shop shop) {
//		this.shop = shop;
//	}
	
	
}
