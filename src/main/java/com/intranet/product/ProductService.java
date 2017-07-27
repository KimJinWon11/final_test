package com.intranet.product;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class ProductService {

	@Inject
	private ProductDAO productDAO;


	
	public ProductDTO beforeData(int num)throws Exception{
		
		
		
		return productDAO.beforeData(num);
	}
	public List<ProductDTO> productList(ProductDTO productDTO)throws Exception{


		return productDAO.productList(productDTO);
	}

	public List<ProductDTO> outsourcingList()throws Exception{



		return productDAO.outsourcingList();	

	}
	public List<ProductDTO> sitemList()throws Exception{



		return productDAO.sitemList();	

	}
	public List<ProductDTO> itemList(String outsourcing)throws Exception{



		return productDAO.itemList(outsourcing);	

	}

	public int productInsert(ProductDTO productDTO)throws Exception{



		return productDAO.productInsert(productDTO);
	}
	public int productUpdate(ProductDTO productDTO)throws Exception{
		int result = 0;
		ProductDTO productDTO2= productDAO.beforeData(productDTO.getNum());
		
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		java.util.Date date= df.parse(productDTO2.getIn_date());
		long d = date.getTime();
		
		System.out.println("수정하려는 날"+d);
		Date date3	 = new Date(d);
		System.out.println("date3 :"+date3);
		List<ProductDTO> ar = (List<ProductDTO>)productDAO.pList(productDTO2);
		for(int i=0; i<ar.size(); i++){
			java.util.Date date2 = df.parse(ar.get(i).getIn_date());
			
			System.out.println("시간 : "+ar.get(i).getIn_date()+" 밀리 :"+date2.getTime());
			System.out.println("num : "+ar.get(i).getNum());
			
			if(d<date2.getTime()){
				ar.get(i).setCount(productDTO2.getCount());
				productDAO.tcountUpdate(ar.get(i));
			}
			
		}

		
		if(productDTO.getOutsourcing().equals(productDTO2.getOutsourcing())&&productDTO.getItem().equals(productDTO2.getItem())){

			result = productDAO.productUpdate3(productDTO);
		}else{
			
			if(ar.size()==1){
				result = productDAO.productUpdate1(productDTO);
			}else if(ar.size()>1){
				result = productDAO.productUpdate2(productDTO);
			}
		}

		return result;

	}


}
