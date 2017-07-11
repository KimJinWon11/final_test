package com.intranet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
