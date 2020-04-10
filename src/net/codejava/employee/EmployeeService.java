package net.codejava.employee;

import java.util.List;
import java.util.Optional;

//import org.apache.catalina.startup.ClassLoaderFactory.Repository;
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
	
	public void save(Employee employee) {
		repo.save(employee);
	}
	
	public Employee get(int id) {
		Optional<Employee> result = repo.findById(id);
		return result.get();
	}
	
//	public Employee createOrUpdate(Employee entity){
//		Optional<Employee> employee = repo.findById(entity.getEmployeeID());
//		if(employee.isPresent()) {
//			Employee newEmployee = employee.get();
//			newEmployee.setName(entity.getName());
//			newEmployee.setEmail(entity.getEmail());
//			newEmployee.setAddress(entity.getAddress());
//			newEmployee = repo.save(newEmployee);
//			return newEmployee;
//		}else {
//			entity = repo.save(entity);
//			return entity;
//		}
//		
//	}
//	
//	public Employee create(Employee entity) {
//			 entity = repo.save(entity);
//			 return entity;
//		}
//	}
//	public Employee update(int id){
//		Optional<Employee> employee = repo.findById(id);
//		if(employee.isPresent()) {
//			Employee newEmployee = employee.get();
//			newEmployee.setName(entity.getName());
//			newEmployee.setEmail(entity.getEmail());
//			newEmployee.setAddress(entity.getAddress());
//			newEmployee = repo.save(newEmployee);
//			return newEmployee;
//		}else {
//			return null;
//		}
//			
//		
//	}
	
}
