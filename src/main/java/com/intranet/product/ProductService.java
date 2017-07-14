package com.intranet.product;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class ProductService {
	
	@Inject
	private ProductDAO productDAO;
	
	
	public List<ProductDTO> productList(String in_date)throws Exception{
		
		
		return productDAO.productList(in_date);
	}
	
	public List<ProductDTO> outsourcingList()throws Exception{
		
		
		
		return productDAO.outsourcingList();	
		
		}
	public List<ProductDTO> itemList(String outsourcing)throws Exception{
		
		
		
		return productDAO.itemList(outsourcing);	
		
		}
	
	public int productInsert(ProductDTO productDTO)throws Exception{
		
	
		
		return productDAO.productInsert(productDTO);
	}

}
