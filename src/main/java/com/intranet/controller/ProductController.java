package com.intranet.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.intranet.product.ProductDTO;
import com.intranet.product.ProductService;
import com.intranet.product.testDTO;

@Controller
@RequestMapping(value="/product/**")
public class ProductController {
	
	@Inject
	private ProductService productService;
	
	
	
	@RequestMapping(value="beforeData")
	public @ResponseBody Map<String, Object> beforeData(int num)throws Exception{
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beforeData", productService.beforeData(num));
		ProductDTO productDTO=(ProductDTO) map.get("beforeData");
		
		
		
			
		return map;
	}
	@RequestMapping(value="productUpdate")
	public @ResponseBody Map<String, Object> productUpdate(ProductDTO productDTO)throws Exception{
		
		System.out.println(productDTO.getR_date());
		Map<String, Object> map = new HashMap<String, Object>();
		
		productService.productUpdate(productDTO);
		map.put("newdata", productService.beforeData(productDTO.getNum()));
		
		
		
			
		return map;
	}
	
	@RequestMapping(value="productList")
	public String productList(Model model,ProductDTO productDTO,String y, String m)throws Exception{
		
		
		
		if(productDTO.getOutsourcing()==null&&productDTO.getItem()!=null){
			productDTO.setSearch("item");
			if(productDTO.getIn_date()==null){
				productDTO.setIn_date("");
			}
		}else if(productDTO.getOutsourcing()!=null&&productDTO.getItem()==null){
			productDTO.setSearch("outsourcing");
			if(productDTO.getIn_date()==null){
				productDTO.setIn_date("");
			}
		}else if(productDTO.getOutsourcing()!=null&&productDTO.getItem()!=null){
			productDTO.setSearch("outsourcingitem");
			if(productDTO.getIn_date()==null){
				productDTO.setIn_date("");
			}
		}else if(productDTO.getOutsourcing()==null&&productDTO.getItem()==null){
			productDTO.setSearch("");
			if(productDTO.getIn_date()==null){
				productDTO.setIn_date("");
			}
		}
		
		
		Calendar ca = Calendar.getInstance();
		int curyear = ca.get(Calendar.YEAR);
		int curmonth = ca.get(Calendar.MONTH);
		int year = 0;
		int month = 0;
		if((y==null&&m==null)||(y.equals("")&&m.equals(""))){
			productDTO.setIn_date("");
			
			
		}else{
		
		year = Integer.parseInt(y);
		 month = Integer.parseInt(m)-1;
		 
		 if(year>=curyear&&month>curmonth){
				
				y=String.valueOf(curyear);
				year=curyear;
				m=String.valueOf(curmonth+1);
				month=curmonth;
			}
		 
		 Date date = new Date(year, month, 1);
		SimpleDateFormat sd = new SimpleDateFormat("yy/MM");
		String in_date = sd.format(date);
		productDTO.setIn_date(in_date);
		model.addAttribute("year", year);
		model.addAttribute("month", month+1);
		 
		 
		}	
		


		
		model.addAttribute("productDTO",productDTO);
		model.addAttribute("list", productService.productList(productDTO));
		
		
		
		return "product/productList";		
	}
	@RequestMapping(value="outsourcingList")
	public @ResponseBody Map<String, Object> outsourcingList()throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", productService.outsourcingList());
		
		
			
		return map;
	}
	@RequestMapping(value="sitemList")
	public @ResponseBody Map<String, Object> sitemList()throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", productService.sitemList());
		
		
			
		return map;
	}
	@RequestMapping(value="itemList")
	public @ResponseBody Map<String, Object> itemList(String outsourcing)throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", productService.itemList(outsourcing));
		
		
		return map;
		
	}
	
	@RequestMapping(value="productInsert")
	public String productInsert(RedirectAttributes rd, ProductDTO productDTO)throws Exception{
		
		int result = productService.productInsert(productDTO);

		
		
	
	
		return "redirect:productList";		
	}
	
	

}
