package com.choa.test;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class SqlSessionTest extends MyAbstract{

	@Inject
	private SqlSession sqlSession;
	@Test
	public void test() {
		
		System.out.println(sqlSession);
	}

}
