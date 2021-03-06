package com.hellospring.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hellospring.dao.ProductDao;
import com.hellospring.model.Product;

@Controller
public class HomeController {
	private ProductDao productDao = new ProductDao();

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/productList")
	public String getProducts(Model model) {

		List<Product> products = productDao.getProductList();
		model.addAttribute("products",products);
		return "productList";
	}
	
	@RequestMapping("/productList/viewProduct/{productId}")
	public String viewProduct(@PathVariable int productId,Model model) throws IOException{
		System.out.println(productId);
		Product product=productDao.getProductById(productId);
		model.addAttribute(product);
		return "viewProduct";
	}

}
