package com.intranet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.intranet.emp.EmpDTO;
import com.intranet.emp.EmpService;
import com.intranet.util.ListInfo;
import com.intranet.util.ListSearch;

@Controller
public class EmpController {
	@Autowired
	private EmpService empService;
	
	@RequestMapping(value="empList")
	public void empList(Model model, ListSearch listSearch){
		if(listSearch.getSearch()==null){
			listSearch.setSearch("");
		}
		List<EmpDTO> ar = empService.empList(listSearch);
		model.addAttribute("list", ar);
	}
	@RequestMapping(value="empLogin")
	public String empLogin(EmpDTO empDTO,RedirectAttributes rd, HttpSession session){
		
		empDTO = empService.empLogin(empDTO);
		String message = "실패";
		String path = "";
		if(empDTO==null){
			rd.addFlashAttribute("message",message);
			path = "/";			
		}else{
			session.setAttribute("member", empDTO);
			path = "mainPage";			
		}		
		return "redirect:"+path;		
	}
	@RequestMapping(value="logout")
	public String empLogout(HttpSession session){
		
		session.invalidate();
		
		return "redirect:/";
	}
	@RequestMapping(value="myPage")
	public String myPage(){		
		
		return "myPage/myPage";
	}
	@RequestMapping(value="empPwUpdate", method=RequestMethod.POST)
	public String empPwUpdate(EmpDTO empDTO, RedirectAttributes rd){
		
		System.out.println(empDTO.getEmp_id());
		System.out.println(empDTO.getEmp_pw());
		int result = empService.empPwUpdate(empDTO);
		if(result==1){
		rd.addFlashAttribute("message","수정 성공");
		}else{
			rd.addFlashAttribute("message","수정 실패");
		}
		return "redirect:myPage";
	}
}
