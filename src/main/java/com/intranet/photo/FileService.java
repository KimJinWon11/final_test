package com.intranet.photo;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



@Service
public class FileService {

	//seUpload
	public String seUpload(SeDTO seDTO, HttpSession session)throws Exception{

		//
		String file_result="";
		if(seDTO.getFiledata()!= null&& seDTO.getFiledata().getOriginalFilename() !=null && !seDTO.getFiledata().getOriginalFilename().equals("")){

			FileSaver fs = new FileSaver();
			String defaultPath = session.getServletContext().getRealPath("resources/photo");

			String realName = fs.filesave(defaultPath, seDTO.getFiledata());

			file_result = "&bNewLine=true&sFileName="+seDTO.getFiledata().getOriginalFilename()+"&sFileURL=/test/resources/photo/"+realName;

		}else{
			file_result = "&errstr=error";
		}
		return "redirect:"+seDTO.getCallback()+"?callback_func="+seDTO.getCallback_func()+file_result;	


	}


	//delete
	public Boolean fileDelete(String fileName, HttpSession session)throws Exception{

		String realpath = session.getServletContext().getRealPath("resources/upload");
		File f = new File(realpath, fileName);
		System.out.println(realpath);
		boolean result = f.delete();
		return result;
	}

	//save
	public String fileSave(MultipartFile m,HttpSession session)throws Exception{
		FileSaver fileSaver = new FileSaver();
		String fileName = fileSaver.filesave(session.getServletContext().getRealPath("resources/upload"), m);

		return fileName;
	}

}
