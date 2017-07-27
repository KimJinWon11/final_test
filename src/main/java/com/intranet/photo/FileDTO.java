package com.intranet.photo;

import org.springframework.web.multipart.MultipartFile;

public class FileDTO {
	private String fname;
	private String oname;
	private int num;
	private MultipartFile[] file;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public MultipartFile[] getFile() {
		return file;
	}
	public void setFile(MultipartFile[] file) {
		this.file = file;
	}

	
	
	
	

}
