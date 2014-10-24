package model;

import javax.persistence.*;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorValue("SHOPOWNER")
public class ShopOwner extends User{
	

	
	
}
