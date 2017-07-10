package com.intranet.emp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmpDAO {
	@Autowired
	private SqlSession sqlSession;
	private static final String NAMESPACE="EmpMapper.";
	
	
	public List<EmpDTO> empList(){
		
		return sqlSession.selectList(NAMESPACE+"list");
	}
}
