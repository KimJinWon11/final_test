package com.intranet.product;

import java.sql.Date;

public class ProductDTO {
	private String outsourcing;
	private String item;
	private int price;
	private int count;
	private Date in_date;
	private int totalcount;
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
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	
	
	
}
