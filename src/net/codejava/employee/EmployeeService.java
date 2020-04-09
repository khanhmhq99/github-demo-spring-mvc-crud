package net.codejava.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeRespository repo;
	
	public List<Employee> listAll(){
		return (List<Employee>) repo.findAll();
	}
	
	public void delete(int id) {
		repo.deleteById(id);
	}
	
	public List<Employee> search(String keyword) {
		return repo.search(keyword);
	}
}
