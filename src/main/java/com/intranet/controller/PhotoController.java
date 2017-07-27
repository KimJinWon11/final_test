package com.intranet.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.intranet.photo.FileDTO;
import com.intranet.photo.FileService;
import com.intranet.photo.PhotoDTO;
import com.intranet.photo.PhotoService;
import com.intranet.photo.SeDTO;
import com.intranet.util.ListInfo;

@Controller
@RequestMapping(value="/photo/**")
public class PhotoController {

	@Inject
	private PhotoService photoService;
	
	
	@RequestMapping(value="photoList")
	public void photoList(ListInfo listInfo, Model model)throws Exception{
		
		List<PhotoDTO> ar = photoService.photoList(listInfo);
		model.addAttribute("list", ar);
	}
	@RequestMapping(value="photoWrite")
	public void photoWrite()throws Exception{
		
	}
	@RequestMapping(value="photoView")
	public void photoView(int num, Model model)throws Exception{
		
		Map<String, Object> map = photoService.photoView(num);
		
		model.addAttribute("photoDTO", map.get("photoDTO"));
		model.addAttribute("fileList", map.get("fileList"));
 		
		
	}
	
	@RequestMapping(value="photoUpdate")
	public void photoUpdate(int num, Model model)throws Exception{
		
		Map<String, Object> map = photoService.photoView(num);
		
		model.addAttribute("photoDTO", map.get("photoDTO"));
		model.addAttribute("fileList", map.get("fileList"));
 		
		
	}
	@RequestMapping(value="photoUpdate",method=RequestMethod.POST)
	public String photoUpdate(PhotoDTO photoDTO,FileDTO fileDTO, HttpSession session)throws Exception{
		
		 photoService.photoUpdate(photoDTO, fileDTO,session);	
		 
		 return "redirect:photoView?num="+photoDTO.getNum();
		
	}
	//SmartEditor
		@RequestMapping(value="seUpload", method=RequestMethod.POST)
		public String seUpload(SeDTO seDTO, HttpSession session)throws Exception{	
			
			System.out.println("se 접속");
		/*	Enumeration<Object> e=request.getParameterNames();
			while (e.hasMoreElements()) {
				System.out.println(e.nextElement());			
			}
			Iterator<String> it=request.getFileNames();
			while(it.hasNext()){
				System.out.println(it.next());
			}*/
	/*		//callBack
			String callback = seDTO.getCallback();
			//callback_func
			String callback_func = seDTO.getCallback_func();
			//oname
			String original_name = seDTO.getFiledata().getOriginalFilename();
			//defaultPath
			String defaultPath = session.getServletContext().getRealPath("resources/upload");
			
			File f = new File(defaultPath);
			//폴더가 존재하지 않으면 만들어라...
			if(!f.exists()){
				f.mkdirs();
			}
			//폴더에 저장할 파일명 
			String realName = UUID.randomUUID().toString()+"_"+original_name;
			//폴더에 저장
			seDTO.getFiledata().transferTo(new File(f, realName));*/
			
			//
			/*String file_result = "&bNewLine=true&sFileName="+original_name+"&sFileURL=/ex6/resources/upload/"+realName;
			
			return "redirect:"+callback+"?callback_func="+callback_func+file_result;*/
			FileService fs = new FileService();
			return fs.seUpload(seDTO, session);	
		}
	
	@RequestMapping(value="photoInsert",method=RequestMethod.POST)
	public String photoInsert(PhotoDTO photoDTO,FileDTO fileDTO, HttpSession session)throws Exception{		
		
		 photoService.photoInsert(photoDTO, fileDTO,session);	
		 
		 return "redirect:photoList";		
		
	}
	
}
