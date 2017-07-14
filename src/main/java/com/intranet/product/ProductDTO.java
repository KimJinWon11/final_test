package com.intranet.product;

import java.sql.Date;

public class ProductDTO {
	private int num;
	private String outsourcing;
	private String item;
	private int price;
	private int count;
	private Date in_date;
	private int total_count;
	private int total_price;
	
	
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
	public Date getIn_date() {
		return in_date;
	}
	public void setIn_date(Date in_date) {
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

	
	
	
}
