package com.intranet.product;

import java.sql.Date;

public class ProductDTO {
	private int num;
	private String outsourcing;
	private String item;
	private int price;
	private int count;
	private String in_date;
	private int total_count;
	private int total_price;
	private String search;	
	private Date r_date;
	
	
	
	public int getNum() {
		return num;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
	public String getOutsourcing() {
		return outsourcing;
	}
	public void setOutsourcing(String outsourcing) {
		this.outsourcing = outsourcing;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}


	
	public String getIn_date() {
		return in_date;
	}

	public void setIn_date(String in_date) {
		this.in_date = in_date;
	}

	public int getTotal_count() {
		return total_count;
	}
	public void setTotal_count(int total_count) {
		this.total_count = total_count;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}



	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}

	
	
	
	
	
	

	
	
	
	
}
