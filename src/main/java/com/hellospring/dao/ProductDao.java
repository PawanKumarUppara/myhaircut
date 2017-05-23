package com.hellospring.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.hellospring.model.Product;

public class ProductDao {
	private List<Product> productList;

	public List<Product> getProductList() {
		Product product1 = new Product();
		product1.setProductName("henry");
		product1.setProductCategory("pantene");
		product1.setProductDescription("cleans hair dandruff");
		product1.setProductPrice(200);
		product1.setProductCondition("new");
		product1.setProductStatus("Active");
		product1.setUnitInStock(11);
		product1.setProductManufacturer("pnatene and co");
		
	
		
		productList=new ArrayList<Product>();
		productList.add(product1);
		
		return productList;

	}



	public Product getProductById(int productId) throws IOException {
		// TODO Auto-generated method stubge
	for(Product product:getProductList()){
		if(product.getProductId()==productId){
		return product;	
		}
	}
	
	throw new IOException("no product found");
	}

	
}
