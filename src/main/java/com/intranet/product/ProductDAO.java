package com.intranet.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Inject
	private SqlSession sqlSession;
	private String NAMESPACE="ProductMapper.";
	
	
	
public List<ProductDTO> productList()throws Exception{
		
	
		
	return sqlSession.selectList(NAMESPACE+"list");	
	
	}
public int productInsert(ProductDTO productDTO)throws Exception{
	
	int result = sqlSession.insert(NAMESPACE+"insert", productDTO);
	
	return result;
}

	
	
	
	
	
	

}
