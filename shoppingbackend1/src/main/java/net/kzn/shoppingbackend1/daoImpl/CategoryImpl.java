package net.kzn.shoppingbackend1.daoImpl;

import java.util.ArrayList;
import java.util.List;

import net.kzn.shoppingbackend1.dao.CategoryDAO;
import net.kzn.shoppingbackend1.dto.Category;

public class CategoryImpl implements CategoryDAO {

	private static List<Category> categories=new ArrayList<Category>();
	
	static {
		
		Category category=new Category();
		category.setId(1);
		category.setName("Tele");
		category.setDescription("This is a description for Tele");
		category.setImageURL("CAT_1.png");
		
		categories.add(category);
		
		category=new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This is a description for Mobile");
		category.setImageURL("CAT_2.png");
		
		categories.add(category);
		
		category=new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("This is a description for Laptop");
		category.setImageURL("CAT_3.png");
		
		categories.add(category);
		
	}
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories ;
	}

}
