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
}
