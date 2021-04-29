package net.kzn.shoppingbackend1.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.kzn.shoppingbackend1.dao.CategoryDAO;
import net.kzn.shoppingbackend1.dto.Category;

@Repository("categoryDAO")
public class CategoryImpl implements CategoryDAO {


private static List<Category> categories=new ArrayList<Category>();
	
	static {
		
		Category category=new Category();
		category.setId(1);
		category.setName("Television");
		category.setDescription("This is a description for Television");
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
	@Override
	public Category get(int id) {
		// enhanced for loop 
		for (Category category:categories) {
			if(category.getId()== id) return category;
		}
		return null;
	}

}
