package com.intranet.photo;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.intranet.util.ListInfo;






@Service
public class PhotoService {
	@Inject
	private PhotoDAO photoDAO;
	
	
	public int photoInsert(PhotoDTO photoDTO, FileDTO fileDTO, HttpSession session)throws Exception{
		
		
		String realPath = session.getServletContext().getRealPath("resources/photo");
		System.out.println(realPath);
		List<FileDTO> ar = new ArrayList<FileDTO>();
		
		for(int i=0; i<fileDTO.getFile().length; i++){
		FileDTO fileDTO2 = new FileDTO();
		fileDTO2.setFname(this.filesave(realPath, fileDTO.getFile()[i]));
		fileDTO2.setOname(fileDTO.getFile()[i].getOriginalFilename());
		
		ar.add(fileDTO2);
		
	
		}
		photoDTO.setFileList(ar);
	
		
		photoDAO.photoInsert(photoDTO);
		
		return 0;
	}
public int photoUpdate(PhotoDTO photoDTO, FileDTO fileDTO, HttpSession session)throws Exception{
		
		
		String realPath = session.getServletContext().getRealPath("resources/photo");
		System.out.println(realPath);
		List<FileDTO> ar = new ArrayList<FileDTO>();
		
		for(int i=0; i<fileDTO.getFile().length; i++){
		FileDTO fileDTO2 = new FileDTO();
		fileDTO2.setFname(this.filesave(realPath, fileDTO.getFile()[i]));
		fileDTO2.setOname(fileDTO.getFile()[i].getOriginalFilename());
		
		ar.add(fileDTO2);
		
	
		}
		photoDTO.setFileList(ar);
	
		
		photoDAO.photoUpdate(photoDTO);
		
		return 0;
	}
	
	public List<PhotoDTO> photoList(ListInfo listInfo)throws Exception{
		
		int totalCount = photoDAO.boardCount();
		
		listInfo.makePage(totalCount);
		listInfo.makeRow();
		
		
		
		return photoDAO.photoList(listInfo);
	}
	
	public Map<String, Object> photoView(int num)throws Exception{
		
		
		
		return photoDAO.photoView(num);
	}
	
	
	
	
	
	
	
	public String filesave(String realPath, MultipartFile m)throws Exception{
		
		File f = new File(realPath);
		if(!f.exists()){
			f.mkdirs();
		}
		
		Calendar ca  = Calendar.getInstance();
		String fileName = ca.getTimeInMillis()+"_"+m.getOriginalFilename();
		File target = new File(f,fileName);
		m.transferTo(target);
		
		return fileName;
		
	}

}
