package com.intranet.emp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpService {
	@Autowired
	private EmpDAO empDAO;
	
	public List<EmpDTO> empList(){
		return empDAO.empList();
	}
}
