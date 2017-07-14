package com.choa.test;

import static org.junit.Assert.*;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.intranet.product.ProductDAO;
import com.intranet.product.ProductDTO;

public class SqlSessionTest extends MyAbstract{

	@Inject
	private ProductDAO productDAO;
	@Test
	public void test()throws Exception {
		
		Calendar ca = Calendar.getInstance();
		int year = ca.get(Calendar.YEAR);
		int month = ca.get(Calendar.MONTH);
		
		System.out.println(month);
		
		
	}

}
