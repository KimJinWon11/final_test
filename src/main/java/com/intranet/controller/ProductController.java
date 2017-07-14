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

@Controller
@RequestMapping(value="/product/**")
public class ProductController {
	
	@Inject
	private ProductService productService;
	
	@RequestMapping(value="productList")
	public String productList(Model model,String y, String m)throws Exception{
		
		if(m.equals("0")){
			m="12";
			int y2 = Integer.parseInt(y)-1;
			y=String.valueOf(y2);
		}
		if(m.equals("13")){
			m="1";
			int y2 = Integer.parseInt(y)+1;
			y=String.valueOf(y2);
		}
		Calendar ca = Calendar.getInstance();
		int curyear = ca.get(Calendar.YEAR);
		int curmonth = ca.get(Calendar.MONTH);		
		
		int year = Integer.parseInt(y);
		int month = Integer.parseInt(m)-1;
	
		
		if(year>=curyear&&month>curmonth){
			
			y=String.valueOf(curyear);
			year=curyear;
			m=String.valueOf(curmonth+1);
			month=curmonth;
		}
		
		Date date = new Date(year, month, 1);
		SimpleDateFormat sd = new SimpleDateFormat("yy/MM");
		
		
		model.addAttribute("year", y);
		model.addAttribute("month", m);
		model.addAttribute("list", productService.productList(sd.format(date)));
		
		
		
		return "product/productList";		
	}
	@RequestMapping(value="outsourcingList")
	public @ResponseBody Map<String, Object> outsourcingList()throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", productService.outsourcingList());
		
		
			
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
		
		Calendar ca = Calendar.getInstance();
		int year = ca.get(Calendar.YEAR);
		int month = ca.get(Calendar.MONTH)+1;
		
	
	
		return "redirect:productList?y="+year+"&m="+month;		
	}
	

}
