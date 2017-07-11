package com.intranet.emp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intranet.util.ListInfo;
import com.intranet.util.ListSearch;

@Service
public class EmpService {
	@Autowired
	private EmpDAO empDAO;
	
	public List<EmpDTO> empList(ListSearch listSearch){
		return empDAO.empList(listSearch);
	}
	public EmpDTO empSearch(Integer num){
		return empDAO.empSearch(num);
	}
}
