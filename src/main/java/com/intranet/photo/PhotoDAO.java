package com.intranet.photo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.intranet.util.ListInfo;

@Repository
public class PhotoDAO {

	@Inject
	private SqlSession sqlSession;
	private String NAMESPACE="PhotoMapper.";

	public int photoInsert(PhotoDTO photoDTO) throws Exception{

		photoDTO.setFname(photoDTO.getFileList().get(0).getFname());

		int result = sqlSession.insert(NAMESPACE+"photoInsert", photoDTO);

		if(result==1){
			List<FileDTO> ar = 	photoDTO.getFileList();

			for(int i=0; i<ar.size(); i++){

				ar.get(i).setNum((Integer)(sqlSession.selectOne(NAMESPACE+"photoSeq")));
				System.out.println(ar.get(i).getFname());
				sqlSession.insert(NAMESPACE+"fileUpload", ar.get(i));


			}


		}


		return 0;
	}
	public int photoUpdate(PhotoDTO photoDTO) throws Exception{

		photoDTO.setFname(photoDTO.getFileList().get(0).getFname());

		int result = sqlSession.update(NAMESPACE+"photoUpdate",photoDTO);
		if(result ==1){
					sqlSession.delete(NAMESPACE+"fileDelete", photoDTO.getNum());
						}
		if(result==1){
			List<FileDTO> ar = 	photoDTO.getFileList();

			for(int i=0; i<ar.size(); i++){

				ar.get(i).setNum(photoDTO.getNum());
				System.out.println(ar.get(i).getFname());
				sqlSession.insert(NAMESPACE+"fileUpload", ar.get(i));


			}


		}


		return 0;
	}
	public int boardCount() throws Exception {
		
		int result = sqlSession.selectOne(NAMESPACE+"count");
		
		return result;
	}
	
	public List<PhotoDTO> photoList(ListInfo listInfo){
		
		
		return sqlSession.selectList(NAMESPACE+"photoList", listInfo);
	}

	public Map<String, Object> photoView(int num) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("photoDTO", sqlSession.selectOne(NAMESPACE+"photoView", num));
		map.put("fileList", sqlSession.selectList(NAMESPACE+"photoFileView", num));
		
		
		return map;
	}


}
