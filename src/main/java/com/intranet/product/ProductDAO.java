package com.intranet.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Inject
	private SqlSession sqlSession;
	private String NAMESPACE="ProductMapper.";
	
	
	
public List<ProductDTO> productList(String in_date)throws Exception{
		
	
		
	return sqlSession.selectList(NAMESPACE+"list", in_date);	
	
	}
public List<ProductDTO> outsourcingList()throws Exception{
	
	
	
	return sqlSession.selectList(NAMESPACE+"outsourcingList");	
	
	}
public List<ProductDTO> itemList(String outsourcing)throws Exception{
	
	
	
	return sqlSession.selectList(NAMESPACE+"itemList",outsourcing);	
	
	}
public int productInsert(ProductDTO productDTO)throws Exception{
	
	Map<String, Object> map = new HashMap<String, Object>();
	map.put("productDTO", productDTO);
	sqlSession.insert(NAMESPACE+"insert",map);
	int result = (Integer)map.get("result");
	
	return result;
	
}

	
	
	
	
	
	

}
