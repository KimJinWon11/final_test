package com.intranet.product;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class ProductService {
	
	@Inject
	private ProductDAO productDAO;
	
	
	public List<ProductDTO> productList()throws Exception{
		
		
		return productDAO.productList();
	}
	
	public int productInsert(ProductDTO productDTO)throws Exception{
		
	
		
		return productDAO.productInsert(productDTO);
	}

}
