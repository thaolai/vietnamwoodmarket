package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="News")
public class News {

	@Id @GeneratedValue
	@Column(name="ID")
    int id;
	@Column(name="title")
    String title;
	@Column(name="img_path")
    String img_path;
	public News() {
		super();
	}

	@Column(name="details")
	String details;
	
	@Column(name="source")
	   String source;

	    public News(String title, String img_path, String details, String source) {
		super();
		this.title = title;
		this.img_path = img_path;
		this.details = details;
		this.source = source;
	}

		public String getSource() {
			return source;
		}

		public void setSource(String source) {
			this.source = source;
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

		public String getImg_path() {
			return img_path;
		}

		public void setImg_path(String img_path) {
			this.img_path = img_path;
		}

	
		public String getDetails() {
			return details;
		}

		public void setDetails(String details) {
			this.details = details;
		}

		
}
