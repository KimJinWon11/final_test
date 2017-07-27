package com.intranet.product;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.intranet.project.ProjectDTO;

@Repository
public class ProductDAO {

	@Inject
	private SqlSession sqlSession;
	private String NAMESPACE="ProductMapper.";



	public List<ProductDTO> pList(ProductDTO productDTO)throws Exception{

		return sqlSession.selectList(NAMESPACE+"pList", productDTO);
	}


	public List<ProductDTO> productList(ProductDTO productDTO)throws Exception{



		return sqlSession.selectList(NAMESPACE+"list", productDTO);	

	}
	public List<ProductDTO> outsourcingList()throws Exception{



		return sqlSession.selectList(NAMESPACE+"outsourcingList");	

	}
	public List<ProductDTO> sitemList()throws Exception{



		return sqlSession.selectList(NAMESPACE+"sitemList");	

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
	public int productUpdate1(ProductDTO productDTO)throws Exception{

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productDTO", productDTO);
		sqlSession.insert(NAMESPACE+"productUpdate1",map);
		int result = (Integer)map.get("result");

		return result;

	}
	public int productUpdate2(ProductDTO productDTO)throws Exception{

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productDTO", productDTO);
		sqlSession.insert(NAMESPACE+"productUpdate2",map);
		int result = (Integer)map.get("result");

		return result;

	}
	public int productUpdate3(ProductDTO productDTO)throws Exception{

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productDTO", productDTO);
		sqlSession.insert(NAMESPACE+"productUpdate3",map);
		int result = (Integer)map.get("result");

		return result;

	}
	public ProductDTO beforeData(int num)throws Exception{
		
		ProductDTO productDTO = sqlSession.selectOne(NAMESPACE+"beforename", num);
		
		return productDTO;
	}
	public int tcountUpdate(ProductDTO productDTO)throws Exception{
		
		return sqlSession.update(NAMESPACE+"tcountUpdate", productDTO);
	}








}
