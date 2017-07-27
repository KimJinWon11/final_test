package com.intranet.emp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.intranet.util.ListInfo;
import com.intranet.util.ListSearch;

@Repository
public class EmpDAO {
	@Autowired
	private SqlSession sqlSession;
	private static final String NAMESPACE="EmpMapper.";
	
	
	public List<EmpDTO> empList(ListSearch listSearch){
		return sqlSession.selectList(NAMESPACE+"list", listSearch);
	}
	public EmpDTO empSearch(Integer num){
		return sqlSession.selectOne(NAMESPACE+"search", num);	
	}
	
	public EmpDTO empLogin(EmpDTO empDTO){
		
		return sqlSession.selectOne(NAMESPACE+"empLogin", empDTO);
	}
	public int empPwUpdate(EmpDTO empDTO){
		return sqlSession.update(NAMESPACE+"empPwUpdate", empDTO);
	}
	
}
