package com.intranet.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.intranet.product.ProductDTO;
import com.intranet.product.ProductService;

@Controller
@RequestMapping(value="/product/**")
public class ProductController {
	
	@Inject
	private ProductService productService;
	
	@RequestMapping(value="productList")
	public String productList(Model model)throws Exception{
		
		model.addAttribute("list", productService.productList());
		
		return "product/productList";		
	}
	
	@RequestMapping(value="productInsert")
	public String productInsert(RedirectAttributes rd, ProductDTO productDTO)throws Exception{
		
		int result = productService.productInsert(productDTO);
		
	
		System.out.println("dddddddddddddddreretrwerwerewrew");
		return "redirect:productList";		
	}
	

}
