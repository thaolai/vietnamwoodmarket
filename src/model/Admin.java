package model;

import javax.persistence.*;


@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorValue("ADMIN")
public class Admin extends User{

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(String username, String password) {
		super(username, password);
		// TODO Auto-generated constructor stub
	}

	
}
