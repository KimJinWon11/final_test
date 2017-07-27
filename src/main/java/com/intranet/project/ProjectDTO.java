package com.intranet.project;

import java.sql.Date;

public class ProjectDTO {
	private int p_num;
	private String p_title;
	private int p_budget;
	private Date p_start;
	private Date p_last;
	private String p_contents;
	private int p_dday;
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	public int getP_budget() {
		return p_budget;
	}
	public void setP_budget(int p_budget) {
		this.p_budget = p_budget;
	}
	public Date getP_start() {
		return p_start;
	}
	public void setP_start(Date p_start) {
		this.p_start = p_start;
	}
	public Date getP_last() {
		return p_last;
	}
	public void setP_last(Date p_last) {
		this.p_last = p_last;
	}
	public String getP_contents() {
		return p_contents;
	}
	public void setP_contents(String p_contents) {
		this.p_contents = p_contents;
	}
	public int getP_dday() {
		return p_dday;
	}
	public void setP_dday(int p_dday) {
		this.p_dday = p_dday;
	}
	
	
	
}
